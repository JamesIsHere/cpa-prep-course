<#
.SYNOPSIS
    Orchestrator for CPA question batch operations.
.DESCRIPTION
    Runs sequential batches of question updates, each in a fresh Claude Code
    context window. Prevents context overflow by isolating each batch into its
    own headless invocation while maintaining cross-batch state on disk.
.EXAMPLE
    ./scripts/orchestrate.ps1 -Section isc -Mode citation -Batches 14
    ./scripts/orchestrate.ps1 -Section bar -Mode difficulty -Batches 10
    ./scripts/orchestrate.ps1 -Section reg -Mode blooms -Target l3 -Batches 8
    ./scripts/orchestrate.ps1 -Section aud -Mode citation -Batches 1 -DryRun
#>

param(
    [Parameter(Mandatory)]
    [ValidateSet('aud','far','reg','bar','isc','tcp')]
    [string]$Section,

    [ValidateSet('citation','difficulty','blooms')]
    [string]$Mode = 'citation',

    [Parameter(Mandatory)]
    [int]$Batches,

    [int]$BatchSize = 50,

    [ValidateSet('l1','l3','l4')]
    [string]$Target,

    [int]$MaxRetries = 1,

    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

# ═══════════════════════════════════════════════════════════════
# PATHS & CONFIG
# ═══════════════════════════════════════════════════════════════

$RepoRoot    = Resolve-Path (Join-Path $PSScriptRoot '..')
$Migrations  = Join-Path (Join-Path $RepoRoot 'supabase') 'migrations'
$QaScripts   = Join-Path (Join-Path $RepoRoot 'scripts') 'qa'
$Timestamp   = Get-Date -Format 'yyyyMMdd-HHmmss'
$TempDir     = Join-Path $env:TEMP "cpa-orch-$Section-$Mode-$Timestamp"
$LogDir      = Join-Path (Join-Path $RepoRoot 'docs') 'orchestrator-logs'
$LogFile     = Join-Path $LogDir "${Timestamp}_${Mode}_${Section}.log"

New-Item -ItemType Directory -Path $TempDir -Force | Out-Null
New-Item -ItemType Directory -Path $LogDir -Force | Out-Null

# Mode-specific tracker files
$TrackerMap = @{
    'citation'  = Join-Path (Join-Path $RepoRoot 'docs') 'citation-coverage.md'
    'difficulty' = Join-Path (Join-Path $RepoRoot 'docs') 'difficulty-rebalancing.md'
    'blooms'    = Join-Path (Join-Path $RepoRoot 'docs') 'blooms-rebalancing.md'
}
$TrackerFile = $TrackerMap[$Mode]

# Mode-specific selection scripts
$SelectorMap = @{
    'citation'  = 'find-missing-citations.ts'
    'difficulty' = 'select-easy-candidates.ts'
    'blooms'    = 'select-l2-candidates.ts'
}

# Section citation patterns (passed to Claude in prompt)
$CitPatterns = @{
    'aud' = 'AU-C, SAS, PCAOB, AT-C, AR-C, SSARS, SQMS, GAGAS, AICPA Code'
    'far' = 'ASC, FASB, GASB'
    'reg' = 'IRC, Sec., Section, Circular 230, UCC'
    'bar' = 'ASC, FASB, GASB'
    'isc' = 'SOC, AICPA, SSAE, AT-C, NIST, COBIT'
    'tcp' = 'IRC, Sec., Section'
}

# Mode labels for display and commit messages
$ModeLabel = switch ($Mode) {
    'citation'  { 'Citation backfill' }
    'difficulty' { 'Difficulty rebalancing' }
    'blooms'    { "Bloom's $($Target.ToUpper()) rebalancing" }
}

# File pattern for detecting existing batches
$FilePattern = switch ($Mode) {
    'citation'  { "*_citation_${Section}_batch*.sql" }
    'difficulty' { "*_difficulty_${Section}_batch*.sql" }
    'blooms'    { "*_blooms_${Target}_${Section}_batch*.sql" }
}

# ═══════════════════════════════════════════════════════════════
# VALIDATE
# ═══════════════════════════════════════════════════════════════

if ($Mode -eq 'blooms' -and -not $Target) {
    throw 'Blooms mode requires -Target (l1, l3, or l4)'
}

if (-not (Test-Path (Join-Path $RepoRoot 'package.json'))) {
    throw "Cannot find package.json at $RepoRoot"
}

foreach ($cmd in @('claude', 'npx', 'git')) {
    try { $null = Get-Command $cmd -ErrorAction Stop }
    catch { throw "$cmd not found on PATH" }
}

# ═══════════════════════════════════════════════════════════════
# DETECT START BATCH
# ═══════════════════════════════════════════════════════════════

$existingFiles = Get-ChildItem -Path $Migrations -Filter $FilePattern -ErrorAction SilentlyContinue
$StartBatch = @($existingFiles).Count + 1

# ═══════════════════════════════════════════════════════════════
# RUNNING STATE
# ═══════════════════════════════════════════════════════════════

$totalQuestions   = 0
$totalWarnings    = 0
$completedBatches = 0
$excludeIds       = [System.Collections.Generic.List[int]]::new()
$batchLog         = [System.Collections.Generic.List[hashtable]]::new()
$startTime        = Get-Date

# ═══════════════════════════════════════════════════════════════
# DISPLAY HELPERS
# ═══════════════════════════════════════════════════════════════

function Write-Log {
    param([string]$Message)
    $ts = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    $line = "[$ts] $Message"
    [System.IO.File]::AppendAllText($script:LogFile, "$line`r`n")
}

function Write-Step {
    param([string]$Label, [string]$Value, [string]$Color = 'Green')
    $pad = ' ' * [math]::Max(1, 13 - $Label.Length)
    Write-Host "   ${Label}${pad}" -NoNewline
    Write-Host $Value -ForegroundColor $Color
    Write-Log "$Label  $Value"
}

function Write-Counts {
    param([int]$BatchQCount, [TimeSpan]$BatchElapsed)

    $elapsed  = (Get-Date) - $script:startTime
    $avgMin   = if ($script:completedBatches -gt 0) {
        [math]::Round($elapsed.TotalMinutes / $script:completedBatches, 1)
    } else { 0 }
    $leftCount = $Batches - $script:completedBatches
    $etaMin    = [math]::Round($leftCount * $avgMin, 0)

    Write-Host "   -------------------------------------------------" -ForegroundColor DarkGray
    Write-Host "   Batch:   " -NoNewline -ForegroundColor DarkGray
    Write-Host "$BatchQCount questions" -NoNewline -ForegroundColor White
    Write-Host " in $([math]::Round($BatchElapsed.TotalMinutes, 1))min" -ForegroundColor DarkGray

    Write-Host "   Total:   " -NoNewline -ForegroundColor DarkGray
    Write-Host "$($script:totalQuestions) questions" -NoNewline -ForegroundColor Cyan
    Write-Host " | " -NoNewline -ForegroundColor DarkGray
    Write-Host "$($script:completedBatches)/$Batches batches" -NoNewline -ForegroundColor Cyan
    Write-Host " | " -NoNewline -ForegroundColor DarkGray
    Write-Host "${avgMin}min/batch" -ForegroundColor Cyan

    if ($leftCount -gt 0) {
        Write-Host "   ETA:     " -NoNewline -ForegroundColor DarkGray
        Write-Host "~${etaMin}min remaining ($leftCount batches left)" -ForegroundColor DarkGray
    }

    Write-Log "Running totals: $($script:totalQuestions) questions | $($script:completedBatches)/$Batches batches | ${avgMin}min/batch | ETA ${etaMin}min"
}

# ═══════════════════════════════════════════════════════════════
# CANDIDATE SELECTION
# ═══════════════════════════════════════════════════════════════

function Select-Candidates {
    param([int]$BatchNum)

    $candidateFile = Join-Path $TempDir "batch${BatchNum}.json"
    $excludeFile   = Join-Path $TempDir 'exclude.json'

    # Write cumulative exclude list — use WriteAllText to avoid PS5.1 UTF-8 BOM
    if ($script:excludeIds.Count -gt 0) {
        [System.IO.File]::WriteAllText($excludeFile, (ConvertTo-Json @($script:excludeIds)))
    } else {
        [System.IO.File]::WriteAllText($excludeFile, '[]')
    }

    $scriptPath = Join-Path $QaScripts $SelectorMap[$Mode]
    $selectArgs = @("--section=$Section", "--count=$BatchSize", "--exclude-ids=$excludeFile")

    if ($Mode -eq 'blooms') {
        $selectArgs += "--target=$Target"
    }

    # PS5.1: $ErrorActionPreference='Stop' treats stderr as terminating errors
    # Must locally set to Continue for all native command calls
    Push-Location $RepoRoot
    $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
    try {
        $allOutput = & npx tsx $scriptPath @selectArgs 2>&1
        $exitCode = $LASTEXITCODE
    } finally {
        $ErrorActionPreference = $prevEAP
        Pop-Location
    }

    if ($exitCode -ne 0) {
        throw "Selection script exited with code $exitCode"
    }

    # Keep only stdout strings, drop stderr ErrorRecords and dotenv banner
    $output = @($allOutput) | Where-Object {
        $_ -is [string] -and $_ -notmatch '^\[dotenv'
    }
    [System.IO.File]::WriteAllText($candidateFile, ($output -join "`n"))
    return $candidateFile
}

# ═══════════════════════════════════════════════════════════════
# SCAFFOLD GENERATION
# ═══════════════════════════════════════════════════════════════

function New-Scaffold {
    param([string]$CandidateFile, [int]$BatchNum)

    $scriptPath = Join-Path $QaScripts 'generate-migration.ts'
    $genArgs = @("--mode=$Mode", "--section=$Section", "--batch=$BatchNum")
    if ($Mode -eq 'blooms') { $genArgs += "--target=$Target" }

    Push-Location $RepoRoot
    $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
    try {
        Get-Content $CandidateFile -Raw | & npx tsx $scriptPath @genArgs 2>&1 | Out-Null
        $exitCode = $LASTEXITCODE
    } finally {
        $ErrorActionPreference = $prevEAP
        Pop-Location
    }

    if ($exitCode -ne 0) {
        throw "Scaffold generator exited with code $exitCode"
    }

    # Return the newest file matching our pattern
    $files = Get-ChildItem -Path $Migrations -Filter $FilePattern | Sort-Object Name
    if ($files.Count -eq 0) { throw 'No scaffold file generated' }
    return $files[-1].FullName
}

# ═══════════════════════════════════════════════════════════════
# CLAUDE PROMPT BUILDERS
# ═══════════════════════════════════════════════════════════════

function Build-Prompt {
    param([string]$ScaffoldPath, [string]$CandidateFile, [int]$BatchNum)

    $su = $Section.ToUpper()
    $cit = $CitPatterns[$Section]
    # Forward slashes for Claude's bash environment
    $sf = $ScaffoldPath.Replace('\', '/')
    $cf = $CandidateFile.Replace('\', '/')
    $tf = $TrackerFile.Replace('\', '/')
    $fn = Split-Path $ScaffoldPath -Leaf

    switch ($Mode) {
        'citation' {
            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Citation backfill for $su section, batch $BatchNum.

FILES:
- Migration scaffold (fill every TODO): $sf
- Candidate data (question context): $cf
- Progress tracker to update: $tf

INSTRUCTIONS:

1. Read the scaffold file and the candidate JSON. The JSON contains each question's stem, topic, and current explanation. Use the stem to understand what the question tests so your explanation is accurate and relevant.

2. For EVERY TODO placeholder in the scaffold, write a complete replacement explanation:
   a) First sentence: state the correct answer and cite the controlling standard ($cit) by specific section number
   b) Second sentence: explain WHY the correct answer is right (the reasoning)
   c) Third sentence: use contrast language (while, whereas, although, however, incorrect because, rather than, unlike) to explain why the most plausible wrong answer is wrong
   d) Target 50-100 words per explanation
   e) CRITICAL: escape all single quotes as '' (two single quotes) inside SQL string literals

3. After filling ALL explanations, validate:
   npm run validate-migration $sf
   If validation reports errors, fix them and re-validate. Warnings are acceptable.

4. Update the tracker at ${tf}:
   - Update the $su row in the Section Progress table (increment Batches Done, decrement Batches Left, update Coverage Now %)
   - Add a new row to the Migration Log table with: today's date, migration filename ($fn), section ($su), question count, new coverage %, and a short note about topic coverage

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":N,"file":"$fn"}

If you encounter an unrecoverable error, output:
ORCHESTRATOR_RESULT:{"status":"error","message":"brief description"}
"@
        }

        'difficulty' {
            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Difficulty rebalancing (easy to medium) for $su section, batch $BatchNum.

FILES:
- Migration scaffold (fill every TODO): $sf
- Original easy questions: $cf
- Progress tracker to update: $tf

INSTRUCTIONS:

1. Read the scaffold and candidate JSON. Each candidate is currently easy difficulty — you are rewriting to medium.

2. For EVERY question in the scaffold, perform a full rewrite:
   a) STEM: Add a realistic scenario with a named entity (e.g., "Oakridge Construction LLC"), specific dollar amounts, specific dates, and a complicating factor. Target 20-40 words. No pure "What is X?" stems.
   b) CHOICES: Write four choices with parallel grammatical structure. Each wrong answer must represent a real misconception or computational error students actually make. No "all of the above", "none of the above", or "both A and C" patterns. Longest choice max 2x shortest length.
   c) EXPLANATION: First sentence cites the controlling standard ($cit) by section number. Second sentence explains why correct. Third uses contrast language (while, whereas, although, however, incorrect because, rather than, unlike) to address the most plausible wrong answer. Target 50-100 words.
   d) Set correct_index to the right choice (0-based). Vary the distribution — do not repeat the same index mechanically.
   e) Keep difficulty='medium' and cognitive_level=2.
   f) CRITICAL: escape single quotes as '' in SQL. Format choices as valid JSON arrays.

3. Validate: npm run validate-migration $sf
   Fix errors, re-validate. Warnings acceptable.

4. Update tracker at $tf with batch results.

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":N,"file":"$fn"}

If unrecoverable error:
ORCHESTRATOR_RESULT:{"status":"error","message":"brief description"}
"@
        }

        'blooms' {
            $tgt = $Target.ToUpper()
            $levelGuide = switch ($Target) {
                'l1' { "L1 (Remembering/Understanding): recall facts, definitions, standards. Stems: 'What is...?', 'Which describes...?', 'Which statement is true about...?'. Target difficulty: easy." }
                'l3' { "L3 (Analysis): evaluate effects, compare alternatives, identify implications. Stems: 'What is the most likely effect of X on Y?', 'Which factor most likely indicates...?', 'How would X affect Y?'. Target difficulty: medium or hard." }
                'l4' { "L4 (Evaluation): make judgments, recommend actions, assess competing positions. Stems: 'Evaluate...', 'Recommend...', 'Should the auditor...?', 'What is the best course of action?'. Target difficulty: hard." }
            }

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Bloom's $tgt rebalancing for $su section, batch $BatchNum.

TARGET COGNITIVE LEVEL: $levelGuide

FILES:
- Migration scaffold (fill every TODO): $sf
- Original L2 (Application) questions: $cf
- Progress tracker to update: $tf

INSTRUCTIONS:

1. Read the scaffold and candidate JSON. Each candidate is currently L2 — you are rewriting to $tgt.

2. For EVERY question, perform a full rewrite to the target cognitive level:
   a) STEM: Rewrite to match $tgt stem patterns (see TARGET above). Use named entities, specific amounts/dates.
   b) CHOICES: Four parallel-grammar choices. Wrong answers reflect real misconceptions. No banned patterns. Longest max 2x shortest.
   c) EXPLANATION: First sentence cites standard ($cit). Second explains why correct. Third contrasts most plausible wrong answer using contrast language (while, whereas, although, however, incorrect because, rather than, unlike). 50-100 words.
   d) Set correct_index (0-based), vary distribution.
   e) CRITICAL: escape single quotes as '' in SQL. Format choices as valid JSON.

3. Validate: npm run validate-migration $sf
   Fix errors, re-validate. Warnings acceptable.

4. Update tracker at $tf with batch results.

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":N,"file":"$fn"}

If unrecoverable error:
ORCHESTRATOR_RESULT:{"status":"error","message":"brief description"}
"@
        }
    }
}

# ═══════════════════════════════════════════════════════════════
# RESULT PARSER
# ═══════════════════════════════════════════════════════════════

function Parse-ClaudeResult {
    param([string]$Output)

    $lines = $Output -split "`n"
    $hit   = $lines | Where-Object { $_ -match 'ORCHESTRATOR_RESULT:' } | Select-Object -Last 1

    if ($hit) {
        $json = $hit -replace '.*ORCHESTRATOR_RESULT:', ''
        try { return ($json.Trim() | ConvertFrom-Json) }
        catch { return @{ status = 'parse_error'; message = "Bad JSON: $json" } }
    }
    return @{ status = 'no_result'; message = 'ORCHESTRATOR_RESULT not found in output' }
}

# ═══════════════════════════════════════════════════════════════
# VALIDATION
# ═══════════════════════════════════════════════════════════════

function Invoke-Validate {
    param([string]$ScaffoldPath)

    Push-Location $RepoRoot
    $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
    try {
        $output = & npm run validate-migration -- $ScaffoldPath 2>&1 | Out-String
        $exit   = $LASTEXITCODE
    } finally {
        $ErrorActionPreference = $prevEAP
        Pop-Location
    }

    return @{ Output = $output; ExitCode = $exit }
}

# ═══════════════════════════════════════════════════════════════
# HEADER
# ═══════════════════════════════════════════════════════════════

$su = $Section.ToUpper()
Write-Log "=== SESSION START ==="
Write-Log "Mode: $ModeLabel | Section: $su | Batches: $Batches | Size: $BatchSize | Start: $StartBatch"
if ($DryRun) { Write-Log "DRY RUN" }

Write-Host ''
Write-Host ' ===========================================================' -ForegroundColor DarkCyan
Write-Host "  CPA Orchestrator  |  $ModeLabel  |  $su  |  $Batches batches" -ForegroundColor Cyan
Write-Host "  Start batch: $StartBatch  |  Size: $BatchSize  |  $(Get-Date -Format 'yyyy-MM-dd HH:mm')" -ForegroundColor DarkGray
Write-Host "  Log: $LogFile" -ForegroundColor DarkGray
if ($DryRun) {
    Write-Host '  ** DRY RUN -- scaffold only, Claude will not be invoked **' -ForegroundColor Yellow
}
Write-Host ' ===========================================================' -ForegroundColor DarkCyan

# ═══════════════════════════════════════════════════════════════
# MAIN LOOP
# ═══════════════════════════════════════════════════════════════

$stopped = $false

for ($i = 0; $i -lt $Batches; $i++) {
    $batchNum   = $StartBatch + $i
    $batchStart = Get-Date

    Write-Host ''
    Write-Host " Batch $batchNum ($($i + 1)/$Batches) ----------------------------------------" -ForegroundColor Cyan
    Write-Log "--- Batch $batchNum ($($i + 1)/$Batches) ---"

    # ── 1. Select candidates ───────────────────────────────────
    try {
        $candidateFile = Select-Candidates -BatchNum $batchNum
        $candidates    = Get-Content $candidateFile -Raw | ConvertFrom-Json
        $batchCount    = @($candidates).Count

        if ($batchCount -eq 0) {
            Write-Step 'Select' '0 candidates -- section complete' 'Yellow'
            break
        }
        Write-Step 'Select' "$batchCount candidates"
    } catch {
        Write-Step 'Select' "FAILED: $_" 'Red'
        $stopped = $true; break
    }

    # ── 2. Generate scaffold ───────────────────────────────────
    try {
        $scaffoldPath = New-Scaffold -CandidateFile $candidateFile -BatchNum $batchNum
        $scaffoldName = Split-Path $scaffoldPath -Leaf
        Write-Step 'Scaffold' $scaffoldName
    } catch {
        Write-Step 'Scaffold' "FAILED: $_" 'Red'
        $stopped = $true; break
    }

    # ── 3. DRY RUN shortcut ───────────────────────────────────
    if ($DryRun) {
        Write-Step 'Claude' 'skipped (dry run)' 'DarkGray'
        $totalQuestions += $batchCount
        $completedBatches++
        Write-Counts -BatchQCount $batchCount -BatchElapsed ((Get-Date) - $batchStart)
        continue
    }

    # ── 4. Invoke Claude ───────────────────────────────────────
    Write-Step 'Claude' 'filling content...' 'Yellow'

    $prompt     = Build-Prompt -ScaffoldPath $scaffoldPath -CandidateFile $candidateFile -BatchNum $batchNum
    $promptFile = Join-Path $TempDir "prompt_b${batchNum}.txt"
    $prompt | Out-String | ForEach-Object { [System.IO.File]::WriteAllText($promptFile, $_) }

    $claudeStart = Get-Date
    Push-Location $RepoRoot
    $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
    try {
        $claudeRaw = Get-Content $promptFile -Raw | claude --print --dangerously-skip-permissions 2>&1
    } finally {
        $ErrorActionPreference = $prevEAP
        Pop-Location
    }
    $claudeOutput  = $claudeRaw | Out-String
    $claudeElapsed = (Get-Date) - $claudeStart
    $claudeResult  = Parse-ClaudeResult $claudeOutput

    Write-Step 'Claude' "done ($([math]::Round($claudeElapsed.TotalMinutes, 1))min)"

    if ($claudeResult.status -eq 'error') {
        Write-Step 'Claude' "reported error: $($claudeResult.message)" 'Red'
        $stopped = $true; break
    }

    # ── 5. Validate (double-check even if Claude said ok) ──────
    $val = Invoke-Validate -ScaffoldPath $scaffoldPath

    if ($val.ExitCode -eq 0) {
        $wm = [regex]::Match($val.Output, '(\d+) warnings')
        $wc = if ($wm.Success) { [int]$wm.Groups[1].Value } else { 0 }
        $totalWarnings += $wc
        Write-Step 'Validate' "PASS ($wc warnings)"
    } else {
        Write-Step 'Validate' 'FAIL -- retrying' 'Red'

        $validated = $false
        for ($r = 1; $r -le $MaxRetries; $r++) {
            Write-Step "Retry $r" 'sending errors back to Claude...' 'Yellow'

            $retryPrompt = @"
The migration at $($scaffoldPath.Replace('\','/')) failed validation. Here are the errors:

$($val.Output)

Read the file, fix every error listed above, and save it. Then re-validate:
npm run validate-migration $($scaffoldPath.Replace('\','/'))

When fixed, output: ORCHESTRATOR_RESULT:{"status":"ok"}
If stuck: ORCHESTRATOR_RESULT:{"status":"error","message":"description"}
"@
            $retryFile = Join-Path $TempDir "retry_b${batchNum}_r${r}.txt"
            $retryPrompt | Out-String | ForEach-Object { [System.IO.File]::WriteAllText($retryFile, $_) }

            Push-Location $RepoRoot
            $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
            try {
                Get-Content $retryFile -Raw | claude --print --dangerously-skip-permissions 2>&1 | Out-Null
            } finally {
                $ErrorActionPreference = $prevEAP
                Pop-Location
            }

            $val = Invoke-Validate -ScaffoldPath $scaffoldPath
            if ($val.ExitCode -eq 0) {
                $wm = [regex]::Match($val.Output, '(\d+) warnings')
                $wc = if ($wm.Success) { [int]$wm.Groups[1].Value } else { 0 }
                $totalWarnings += $wc
                Write-Step "Retry $r" "fixed ($wc warnings)" 'Green'
                $validated = $true
                break
            }
            Write-Step "Retry $r" 'still failing' 'Red'
        }

        if (-not $validated) {
            Write-Host ''
            Write-Host '   STOPPED: validation failed after retries' -ForegroundColor Red
            Write-Host "   File: $scaffoldPath" -ForegroundColor DarkGray
            $stopped = $true; break
        }
    }

    # ── 6. Commit ──────────────────────────────────────────────
    $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
    & git -C $RepoRoot add $scaffoldPath $TrackerFile 2>&1 | Out-Null

    $commitBody = "$ModeLabel $su batch $batchNum ($batchCount questions) + tracker update"
    $commitMsgFile = Join-Path $TempDir "commit_b${batchNum}.txt"
    [System.IO.File]::WriteAllText($commitMsgFile, "$commitBody`n`nCo-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>`n")

    & git -C $RepoRoot commit --file=$commitMsgFile 2>&1 | Out-Null
    $commitHash = (& git -C $RepoRoot rev-parse --short HEAD).Trim()
    $ErrorActionPreference = $prevEAP
    Write-Step 'Commit' $commitHash

    # ── 7. Update running state ────────────────────────────────
    $totalQuestions += $batchCount
    $completedBatches++

    foreach ($c in @($candidates)) { $excludeIds.Add([int]$c.id) }

    $batchElapsed = (Get-Date) - $batchStart
    $batchLog.Add(@{
        batch     = $batchNum
        questions = $batchCount
        elapsed   = $batchElapsed
        commit    = $commitHash
    })

    Write-Counts -BatchQCount $batchCount -BatchElapsed $batchElapsed
}

# ═══════════════════════════════════════════════════════════════
# SUMMARY
# ═══════════════════════════════════════════════════════════════

$totalElapsed = (Get-Date) - $startTime
$elapsedFmt   = '{0:hh\:mm\:ss}' -f $totalElapsed
$commits      = ($batchLog | ForEach-Object { $_.commit }) -join ' > '

Write-Host ''
Write-Host ' ===========================================================' -ForegroundColor DarkCyan
if ($stopped) {
    Write-Host '  STOPPED (partial)' -ForegroundColor Yellow
} elseif ($DryRun) {
    Write-Host '  DRY RUN COMPLETE' -ForegroundColor Yellow
} else {
    Write-Host '  COMPLETE' -ForegroundColor Green
}
Write-Host "  $totalQuestions questions  |  $completedBatches batches  |  $elapsedFmt elapsed" -ForegroundColor White
Write-Host "  $totalWarnings total warnings" -ForegroundColor DarkGray
if ($commits) {
    Write-Host "  Commits: $commits" -ForegroundColor DarkGray
}
Write-Host ' ===========================================================' -ForegroundColor DarkCyan
Write-Host ''

$statusWord = if ($stopped) { 'STOPPED' } elseif ($DryRun) { 'DRY_RUN' } else { 'COMPLETE' }
Write-Log "=== SESSION END: $statusWord | $totalQuestions questions | $completedBatches batches | $elapsedFmt | commits: $commits ==="

# ── Cleanup ────────────────────────────────────────────────────
Remove-Item $TempDir -Recurse -Force -ErrorAction SilentlyContinue
