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
    ./scripts/orchestrate.ps1 -Section aud -Mode generate -Batches 130
    ./scripts/orchestrate.ps1 -Section aud -Mode citation -Batches 1 -DryRun
#>

param(
    [Parameter(Mandatory)]
    [ValidateSet('aud','far','reg','bar','isc','tcp')]
    [string]$Section,

    [ValidateSet('citation','difficulty','blooms','generate','moderate','verify','cleanup')]
    [string]$Mode = 'citation',

    [Parameter(Mandatory)]
    [int]$Batches,

    [int]$BatchSize = 50,

    [ValidateSet('l1','l3','l4')]
    [string]$Target,

    [string]$Topic,

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
    'generate'  = Join-Path (Join-Path $RepoRoot 'docs') 'generation-progress.md'
    'verify'    = Join-Path (Join-Path $RepoRoot 'docs') 'verification-progress.md'
    'cleanup'   = Join-Path (Join-Path $RepoRoot 'docs') 'cleanup-progress.md'
}
$TrackerFile = $TrackerMap[$Mode]

# Mode-specific selection scripts
$SelectorMap = @{
    'citation'  = 'find-missing-citations.ts'
    'difficulty' = 'select-easy-candidates.ts'
    'blooms'    = 'select-l2-candidates.ts'
    'generate'  = 'select-generation-batch.ts'
    'moderate'  = 'pull-moderate-candidates.ts'
    'verify'    = 'select-verify-candidates.ts'
    'cleanup'   = 'select-cleanup-candidates.ts'
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
    'generate'  { 'Question generation' }
    'moderate'  { 'Quality upgrade' }
    'verify'    { 'Correctness verification' }
    'cleanup'   { 'FAR cleanup' }
}

# File pattern for detecting existing batches
$FilePattern = switch ($Mode) {
    'citation'  { "*_citation_${Section}_batch*.sql" }
    'difficulty' { "*_difficulty_${Section}_batch*.sql" }
    'blooms'    { "*_blooms_${Target}_${Section}_batch*.sql" }
    'generate'  { "*_generate_${Section}_batch*.sql" }
    'moderate'  { "*_upgrade_${Section}_batch*.sql" }
    'verify'    { "*_verify_fix_${Section}_batch*.sql" }
    'cleanup'   { "*_cleanup_${Section}_batch*.sql" }
}

# ═══════════════════════════════════════════════════════════════
# VALIDATE
# ═══════════════════════════════════════════════════════════════

if ($Mode -eq 'blooms' -and -not $Target) {
    throw 'Blooms mode requires -Target (l1, l3, or l4)'
}

if ($Mode -eq 'generate') {
    $planFile = Join-Path (Join-Path $RepoRoot 'docs') 'generation-plan.json'
    if (-not (Test-Path $planFile)) {
        throw "generation-plan.json not found. Run: npx tsx scripts/qa/plan-distribution.ts"
    }
    # Override batch size default for generate mode
    if (-not $PSBoundParameters.ContainsKey('BatchSize')) {
        $BatchSize = 30
    }
}

if ($Mode -eq 'verify') {
    # Override batch size default for verify mode (deeper reasoning per question)
    if (-not $PSBoundParameters.ContainsKey('BatchSize')) {
        $BatchSize = 10
    }
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

    if ($Mode -eq 'generate') {
        # Generate mode: select-generation-batch.ts has its own args
        $selectArgs = @("--section=$Section", "--batch-size=$BatchSize")
    } elseif ($Mode -eq 'cleanup') {
        # Cleanup mode: uses --limit and --exclude
        $selectArgs = @("--section=$Section", "--limit=$BatchSize", "--exclude=$excludeFile")
    } else {
        $selectArgs = @("--section=$Section", "--count=$BatchSize", "--exclude-ids=$excludeFile")
        if ($Mode -eq 'blooms') {
            $selectArgs += "--target=$Target"
        }
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

    if ($Mode -eq 'generate') {
        # Generate mode: pipe batch spec to generate-insert-scaffold.ts
        $scriptPath = Join-Path $QaScripts 'generate-insert-scaffold.ts'
        $genArgs = @("--section=$Section", "--batch=$BatchNum")

        Push-Location $RepoRoot
        $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
        try {
            Get-Content $CandidateFile -Raw | & npx tsx $scriptPath @genArgs 2>&1 | Out-Null
            $exitCode = $LASTEXITCODE
        } finally {
            $ErrorActionPreference = $prevEAP
            Pop-Location
        }
    } elseif ($Mode -eq 'cleanup') {
        # Cleanup mode: custom scaffold generator
        $scriptPath = Join-Path $QaScripts 'generate-cleanup-scaffold.ts'
        $genArgs = @("--section=$Section", "--batch=$BatchNum")

        Push-Location $RepoRoot
        $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
        try {
            Get-Content $CandidateFile -Raw | & npx tsx $scriptPath @genArgs 2>&1 | Out-Null
            $exitCode = $LASTEXITCODE
        } finally {
            $ErrorActionPreference = $prevEAP
            Pop-Location
        }
    } else {
        # Update modes: pipe candidates to generate-migration.ts
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
    $sf = if ($ScaffoldPath) { $ScaffoldPath.Replace('\', '/') } else { '' }
    $cf = $CandidateFile.Replace('\', '/')
    $tf = $TrackerFile.Replace('\', '/')
    $fn = if ($ScaffoldPath) { Split-Path $ScaffoldPath -Leaf } else { '' }

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
            # Load context for rebalancing/upgrade modes
            $candidates = Get-Content $CandidateFile -Raw | ConvertFrom-Json
            
            # Aggregate unique lesson slugs
            $slugs = @()
            foreach ($c in $candidates) {
                if ($c.lessonSlugs) {
                    foreach ($s in $c.lessonSlugs) {
                        if ($slugs -notcontains $s) { $slugs += $s }
                    }
                }
            }

            # Load Lesson Content
            $lessonContent = ""
            foreach ($slug in $slugs) {
                $lessonPath = Join-Path (Join-Path (Join-Path $RepoRoot 'src') 'content') $Section
                $lessonFile = Join-Path $lessonPath "${slug}.mdx"
                if (Test-Path $lessonFile) {
                    $lessonContent += "`n--- LESSON: $slug ---`n"
                    $lessonContent += Get-Content $lessonFile -Raw
                }
            }

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Difficulty rebalancing (easy to medium) for $su section, batch $BatchNum.

FILES:
- Migration scaffold (fill every TODO): $sf
- Original easy questions: $cf
- Progress tracker to update: $tf

SOURCE LESSON CONTENT (Use for accuracy):
$lessonContent

INSTRUCTIONS:

1. Read the scaffold and candidate JSON. Each candidate is currently easy difficulty — you are rewriting to medium. Candidates include relevant lessonSlugs and frameworkItems.

2. For EVERY question in the scaffold, perform a full rewrite:
   a) STEM: Add a realistic scenario with a named entity, specific dollar amounts, specific dates, and a complicating factor. Target 20-40 words. INTEGRATE the provided frameworkItems.
   b) CHOICES: Write four choices with parallel grammatical structure. No "all of the above" patterns. Longest choice max 2x shortest length.
   c) EXPLANATION: First sentence cites the controlling standard ($cit) by section number. Second sentence explains why correct. Third uses contrast language to address the most plausible wrong answer. Target 50-100 words.
   d) Set correct_index (0-based). Vary the distribution.
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

        'moderate' {
            # Load context for rebalancing/upgrade modes
            $candidates = Get-Content $CandidateFile -Raw | ConvertFrom-Json
            
            # Aggregate unique lesson slugs
            $slugs = @()
            foreach ($c in $candidates) {
                if ($c.lessonSlugs) {
                    foreach ($s in $c.lessonSlugs) {
                        if ($slugs -notcontains $s) { $slugs += $s }
                    }
                }
            }

            # Load Lesson Content
            $lessonContent = ""
            foreach ($slug in $slugs) {
                $lessonPath = Join-Path (Join-Path (Join-Path $RepoRoot 'src') 'content') $Section
                $lessonFile = Join-Path $lessonPath "${slug}.mdx"
                if (Test-Path $lessonFile) {
                    $lessonContent += "`n--- LESSON: $slug ---`n"
                    $lessonContent += Get-Content $lessonFile -Raw
                }
            }

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Quality upgrade (moderate to acceptable) for $su section, batch $BatchNum.

FILES:
- Migration scaffold (fill every TODO): $sf
- Original mediocre questions: $cf
- Progress tracker to update: $tf

SOURCE LESSON CONTENT (Use for accuracy):
$lessonContent

INSTRUCTIONS:

1. Read the scaffold and candidate JSON. These questions have mediocre quality (score 4-6). Each candidate in the JSON includes its relevant lessonSlugs and frameworkItems (mnemonics, decision trees, etc.).

2. For EVERY question, perform a professional upgrade:
   a) STEM: If the stem is a simple question, rewrite it as a scenario with a named entity, specific numbers, and professional context. 20-40 words. INTEGRATE the provided frameworkItems (e.g., require applying a specific mnemonic).
   b) CHOICES: Ensure 4 parallel-grammar choices. Fix any "all of the above" or "length-cuing" issues.
   c) EXPLANATION: First sentence MUST cite the standard ($cit) by section. Second explains why correct. Third MUST use contrast language. 50-100 words.
   d) Set correct_index (0-based) and escape single quotes as ''.

3. Validate: npm run validate-migration $sf
   Fix errors, re-validate.

4. Update tracker at $tf.

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":N,"file":"$fn"}

If you encounter an unrecoverable error, output:
ORCHESTRATOR_RESULT:{"status":"error","message":"brief description"}
"@
        }

        'generate' {
            # Read batch spec to get topic, counts, and existing stems
            $batchSpec = Get-Content $CandidateFile -Raw | ConvertFrom-Json
            $genTopic  = $batchSpec.topic
            $genCount  = $batchSpec.count
            $diffEasy  = $batchSpec.difficulty.easy
            $diffMed   = $batchSpec.difficulty.medium
            $diffHard  = $batchSpec.difficulty.hard
            $bL1       = $batchSpec.blooms.l1
            $bL2       = $batchSpec.blooms.l2
            $bL3       = $batchSpec.blooms.l3
            $bL4       = $batchSpec.blooms.l4

            # Load Lesson Content
            $lessonContent = ""
            if ($batchSpec.lessonSlugs) {
                foreach ($slug in $batchSpec.lessonSlugs) {
                    $lessonPath = Join-Path (Join-Path (Join-Path $RepoRoot 'src') 'content') $Section
                    $lessonFile = Join-Path $lessonPath "${slug}.mdx"
                    if (Test-Path $lessonFile) {
                        $lessonContent += "`n--- LESSON: $slug ---`n"
                        $lessonContent += Get-Content $lessonFile -Raw
                    }
                }
            }

            # Load Framework Items (formatted JSON)
            $frameworkJson = ""
            if ($batchSpec.frameworkItems) {
                $frameworkJson = ($batchSpec.frameworkItems | ConvertTo-Json -Depth 10)
            }

            # Truncate existing stems to stay within context limits (~80K tokens at 2K stems)
            $existingStems = $batchSpec.existingStems
            if ($existingStems.Count -gt 2000) {
                Write-Warning "Stem context capped at 2,000 (had $($existingStems.Count))"
                $existingStems = $existingStems[0..1999]
            }
            $stemsJson = ($existingStems | ConvertTo-Json -Compress)
            if (-not $stemsJson -or $stemsJson -eq 'null') { $stemsJson = '[]' }

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Generate $genCount new $su questions for topic "$genTopic", batch $BatchNum.

TARGET: $diffEasy easy, $diffMed medium, $diffHard hard
BLOOM'S: $bL1 L1, $bL2 L2, $bL3 L3, $bL4 L4

SCAFFOLD: $sf
TRACKER: $tf

EXISTING STEMS (do NOT duplicate these concepts):
$stemsJson

SOURCE LESSON CONTENT (Use this to ensure accuracy and consistent terminology):
$lessonContent

STUDY FRAMEWORKS (Integrate these! Create questions that require applying these mnemonics or following these decision paths):
$frameworkJson

RULES:
1. CONCEPTUAL RESEARCH: Before generating, read the EXISTING STEMS and the SOURCE LESSON CONTENT. Identify the specific sub-topics/concepts already covered. List at least 5 concepts within "$genTopic" that are NOT yet tested by the existing stems.
2. STEM: L1 = "What is...?" (10-20 words). L2+ = scenario-first with named
   entity, dollar amounts, dates (20-60 words). No "What is X?" for medium/hard.
3. CHOICES: 4 parallel-grammar choices. Wrong answers = real misconceptions.
   No all/none of above. Longest max 2x shortest.
4. EXPLANATION (mandatory structured format, 50-100 words):
   Correct (X): [Cite standard ($cit) by section number]. [Explain why correct in 2-3 sentences].
   Wrong (Y): [Capitalize first word. Why this choice is wrong — 1-2 sentences].
   Wrong (Z): [Why wrong].
   Wrong (W): [Why wrong].
   Every explanation MUST start with "Correct (X):" and contain three "Wrong (X):" blocks.
5. VARIETY: Each question in this batch must test a DIFFERENT concept identified in your research.
   Vary entities, amounts, correct_index distribution (roughly equal 0-3).
6. SEMANTIC UNIQUENESS: Changing entity names, dollar amounts, or percentages does NOT make
   a question unique. "Acme Corp reports `$50,000" and "Baker LLC reports `$75,000" testing the
   same concept are duplicates. Each question must test a genuinely different rule, exception,
   threshold, or scenario.
7. SQL: Use `$EXPL$` dollar-quote delimiters for stem, choices, and explanation values (NOT `$$` — content has dollar amounts).
   Choices as valid JSON arrays. section_id = $($batchSpec.sectionId). Include cognitive_level column.

STEPS:
1. Perform Conceptual Research as defined in Rule 1.
2. Read scaffold at $sf, replace every TODO using your research to ensure diversity.
3. Validate: npm run validate-migration $sf
3. Duplicate check: npx tsx scripts/qa/check-generation-duplicates.ts --migration=$sf --section=$Section
4. Fix any errors, re-validate
5. Update tracker at ${tf}:
   - Update the $su row in Section Progress table (increment Generated, decrement Remaining, increment Batches Done)
   - Add a new row to the Batch Log table with: today's date, migration filename ($fn), section ($su), topic ($genTopic), question count ($genCount), and a short note

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":$genCount,"file":"$fn"}

If you encounter an unrecoverable error, output:
ORCHESTRATOR_RESULT:{"status":"error","message":"brief description"}
"@
        }

        'blooms' {
            # Load context for rebalancing/upgrade modes
            $candidates = Get-Content $CandidateFile -Raw | ConvertFrom-Json

            # Aggregate unique lesson slugs
            $slugs = @()
            foreach ($c in $candidates) {
                if ($c.lessonSlugs) {
                    foreach ($s in $c.lessonSlugs) {
                        if ($slugs -notcontains $s) { $slugs += $s }
                    }
                }
            }

            # Load Lesson Content
            $lessonContent = ""
            foreach ($slug in $slugs) {
                $lessonPath = Join-Path (Join-Path (Join-Path $RepoRoot 'src') 'content') $Section
                $lessonFile = Join-Path $lessonPath "${slug}.mdx"
                if (Test-Path $lessonFile) {
                    $lessonContent += "`n--- LESSON: $slug ---`n"
                    $lessonContent += Get-Content $lessonFile -Raw
                }
            }

            $tgt = $Target.ToUpper()
            $levelGuide = switch ($Target) {
                'l1' { "L1 (Remembering/Understanding): recall facts, definitions, standards. Target difficulty: easy." }
                'l3' { "L3 (Analysis): evaluate effects, compare alternatives, identify implications. Target difficulty: medium or hard." }
                'l4' { "L4 (Evaluation): make judgments, recommend actions, assess competing positions. Target difficulty: hard." }
            }

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Bloom's $tgt rebalancing for $su section, batch $BatchNum.

TARGET COGNITIVE LEVEL: $levelGuide

FILES:
- Migration scaffold (fill every TODO): $sf
- Original L2 (Application) questions: $cf
- Progress tracker to update: $tf

SOURCE LESSON CONTENT (Use for accuracy):
$lessonContent

INSTRUCTIONS:

1. Read the scaffold and candidate JSON. Each candidate is currently L2 — you are rewriting to $tgt. Candidates include relevant lessonSlugs and frameworkItems.

2. For EVERY question, perform a full rewrite to the target cognitive level:
   a) STEM: Rewrite to match $tgt stem patterns. Use named entities, specific amounts/dates. INTEGRATE the provided frameworkItems (mnemonics, decision trees).
   b) CHOICES: Four parallel-grammar choices. No banned patterns. Longest max 2x shortest.
   c) EXPLANATION: First sentence cites standard ($cit). Second explains why correct. Third contrasts most plausible wrong answer using contrast language. 50-100 words.
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

        'cleanup' {
            $candidates = Get-Content $CandidateFile -Raw | ConvertFrom-Json
            $batchCount = @($candidates).Count

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: FAR cleanup for $su section, batch $BatchNum ($batchCount questions).

FILES:
- Migration scaffold (fill every TODO): $sf
- Original questions with issues: $cf
- Progress tracker to update: $tf

INSTRUCTIONS:

1. Read the scaffold and candidate JSON. Each candidate lists its issues (unstructured, no_citation, no_contrast, no_blooms, choice_cuing, both_ab).

2. For EVERY TODO placeholder, apply fixes:

   EXPLANATION FORMAT (mandatory — this is the primary fix):
   Correct (X): [Cite the authoritative standard by specific section number, e.g., ASC 606-10-25-1, GASB 34-15]. [Explain why correct in 2-3 sentences].
   Wrong (Y): [Capitalize first word. Why this choice is incorrect — 1-2 sentences].
   Wrong (Z): [Why wrong].
   Wrong (W): [Why wrong].

   CHOICE FIXES (only for questions marked choice_cuing or both_ab):
   - Rewrite all 4 choices with parallel grammatical structure
   - Longest choice must be no more than 2x the length of the shortest
   - No "all of the above", "none of the above", "both A and B"
   - Keep the same correct answer concept

   COGNITIVE LEVEL (for questions marked no_blooms — set cognitive_level):
   - 1 = Remember (definitional recall: "What is X?")
   - 2 = Understand (explain, classify, distinguish)
   - 3 = Apply (calculate, apply rule to scenario with numbers)
   - 4 = Analyze (evaluate, compare, multi-step judgment)

   STEM FIXES (only for questions needing choice rewrites):
   - Keep the same tested concept and difficulty level
   - Improve clarity if needed but don't change the fundamental question

3. Standards to cite ($cit). Every explanation MUST reference a specific standard section.

4. CRITICAL SQL rules:
   - Escape all single quotes as '' (two single quotes)
   - Format choices as valid JSON arrays: ["choice1","choice2","choice3","choice4"]
   - Keep correct_index unchanged unless choices were reordered
   - Use dollar-quote delimiters ($$...$$) for all string values

5. After filling ALL TODOs, validate:
   npm run validate-migration $sf
   Fix any errors and re-validate. Warnings are acceptable.

6. Update tracker at ${tf}:
   - Add a row to the log with: today's date, filename ($fn), section ($su), question count, issues fixed, notes

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":$batchCount,"file":"$fn"}

If you encounter an unrecoverable error, output:
ORCHESTRATOR_RESULT:{"status":"error","message":"brief description"}
"@
        }

        'verify' {
            $candidates = Get-Content $CandidateFile -Raw | ConvertFrom-Json
            $batchCount = @($candidates).Count
            $verifiedIdsFile = Join-Path (Join-Path $RepoRoot 'docs') 'verified-ids.json'
            $vf = $verifiedIdsFile.Replace('\', '/')

            # Build question list for the prompt
            $questionBlock = ""
            $qi = 0
            foreach ($c in @($candidates)) {
                $qi++
                $choiceLabels = @('A','B','C','D')
                $choicesStr = ""
                for ($ci = 0; $ci -lt $c.choices.Count; $ci++) {
                    $choicesStr += "  $($choiceLabels[$ci]). $($c.choices[$ci])`n"
                }
                $keyedLetter = if ($c.correct_index -lt $choiceLabels.Count) { $choiceLabels[$c.correct_index] } else { '?' }
                $qType = if ($c.questionType) { $c.questionType } else { 'conceptual' }

                $questionBlock += @"

### Question $qi (ID: $($c.id), type: $qType, difficulty: $($c.difficulty))
STEM: $($c.stem)
CHOICES:
$choicesStr
KEYED ANSWER: $keyedLetter (index $($c.correct_index))
EXPLANATION: $($c.explanation)
"@
            }

            return @"
You are running headless as part of an automated batch pipeline. Execute autonomously — do not ask questions, do not create task lists, do not use TodoWrite.

TASK: Substantive correctness verification for $su section, batch $BatchNum ($batchCount questions).

TRACKER: $tf
VERIFIED IDS: $vf

INSTRUCTIONS:

You are a CPA exam content reviewer. For each question below, independently derive the correct answer BEFORE looking at the keyed answer. Then compare.

For each question, perform these checks based on type:
- calculation: Re-derive arithmetic step by step, show work
- citation: Verify the cited standard/section actually covers the topic
- conceptual: Determine which answer is best independently, check no distractor is equally defensible
- scenario: Verify conclusion follows from scenario facts

ALL types — also check:
- Does correct_index point to the right choice? (0=A, 1=B, 2=C, 3=D)
- Does explanation support keyed answer (not a different choice)?
- Is any distractor accidentally correct?

Flagging rules:
- "pass" = question is substantively correct
- "fail" = you are confident the key is wrong, math is wrong, or citation is fabricated
- "review" = something seems off but you are not fully certain
- Be conservative: only flag with confidence

QUESTIONS:
$questionBlock

STEPS:
1. Verify each question, write your reasoning for each
2. Output a JSON result block with per-question verdicts
3. Update verified-ids.json at $vf — add each question ID to the appropriate verdict array under "$Section"
4. Update tracker at ${tf}
   - Update the $su row (increment Verified, update Pass/Fail/Review counts)
   - Add a row to the Batch Log with date, batch $BatchNum, section $su, question count, pass/fail/review counts, and note

When finished, output this EXACT line as your final message:
ORCHESTRATOR_RESULT:{"status":"ok","questions":$batchCount,"pass":P,"fail":F,"review":R,"file":"batch${BatchNum}"}

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

        if ($Mode -eq 'generate') {
            # Generate mode: batch spec is a single object with a .count field
            # Empty array signals section complete
            if ($candidates -is [array]) {
                Write-Step 'Select' 'section complete (empty batch spec)' 'Yellow'
                break
            }
            $batchCount = [int]$candidates.count
            if ($batchCount -eq 0) {
                Write-Step 'Select' '0 questions -- section complete' 'Yellow'
                break
            }
            Write-Step 'Select' "$batchCount questions for `"$($candidates.topic)`""
        } else {
            $batchCount = @($candidates).Count
            if ($batchCount -eq 0) {
                Write-Step 'Select' '0 candidates -- section complete' 'Yellow'
                break
            }
            Write-Step 'Select' "$batchCount candidates"
        }
    } catch {
        Write-Step 'Select' "FAILED: $_" 'Red'
        $stopped = $true; break
    }

    # ── 2. Generate scaffold (skip for verify mode) ──────────────
    $scaffoldPath = $null
    if ($Mode -ne 'verify') {
        try {
            $scaffoldPath = New-Scaffold -CandidateFile $candidateFile -BatchNum $batchNum
            $scaffoldName = Split-Path $scaffoldPath -Leaf
            Write-Step 'Scaffold' $scaffoldName
        } catch {
            Write-Step 'Scaffold' "FAILED: $_" 'Red'
            $stopped = $true; break
        }
    } else {
        Write-Step 'Scaffold' 'n/a (verify mode)' 'DarkGray'
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
    $claudeLabel = if ($Mode -eq 'verify') { 'verifying...' } else { 'filling content...' }
    Write-Step 'Claude' $claudeLabel 'Yellow'

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
    #       Skip for verify mode (no migration file to validate)
    if ($Mode -eq 'verify') {
        Write-Step 'Validate' 'n/a (verify mode)' 'DarkGray'
    } else {

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

    } # end: skip validate for verify mode

    # ── 6. Duplicate check (generate mode only) ─────────────────
    if ($Mode -eq 'generate') {
        $dupScript = Join-Path $QaScripts 'check-generation-duplicates.ts'
        Push-Location $RepoRoot
        $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
        try {
            $dupOutput = & npx tsx $dupScript --migration=$scaffoldPath --section=$Section 2>&1 | Out-String
            $dupExit   = $LASTEXITCODE
        } finally {
            $ErrorActionPreference = $prevEAP
            Pop-Location
        }

        if ($dupExit -eq 0) {
            Write-Step 'Dedup' 'PASS'
        } else {
            Write-Step 'Dedup' 'likely duplicates found — retrying' 'Red'

            # Send duplicate errors back to Claude for a fix
            $dupRetryPrompt = @"
The migration at $($scaffoldPath.Replace('\','/')) has likely-duplicate questions. Here is the duplicate check output:

$dupOutput

Read the file, rewrite any questions flagged as likely-duplicate (>0.6 similarity or >80% concept overlap) to test DIFFERENT concepts entirely. Do NOT just change entity names or dollar amounts — the dedup checker normalizes those away. Keep the same topic, difficulty, and cognitive_level. Then re-validate:
npm run validate-migration $($scaffoldPath.Replace('\','/'))
npx tsx scripts/qa/check-generation-duplicates.ts --migration=$($scaffoldPath.Replace('\','/')) --section=$Section

When fixed, output: ORCHESTRATOR_RESULT:{"status":"ok"}
If stuck: ORCHESTRATOR_RESULT:{"status":"error","message":"description"}
"@
            $dupRetryFile = Join-Path $TempDir "dedup_b${batchNum}.txt"
            $dupRetryPrompt | Out-String | ForEach-Object { [System.IO.File]::WriteAllText($dupRetryFile, $_) }

            Push-Location $RepoRoot
            $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
            try {
                Get-Content $dupRetryFile -Raw | claude --print --dangerously-skip-permissions 2>&1 | Out-Null
            } finally {
                $ErrorActionPreference = $prevEAP
                Pop-Location
            }

            # Re-check
            Push-Location $RepoRoot
            $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
            try {
                $dupOutput2 = & npx tsx $dupScript --migration=$scaffoldPath --section=$Section 2>&1 | Out-String
                $dupExit2   = $LASTEXITCODE
            } finally {
                $ErrorActionPreference = $prevEAP
                Pop-Location
            }

            if ($dupExit2 -eq 0) {
                Write-Step 'Dedup' 'fixed after retry'
            } else {
                Write-Host ''
                Write-Host '   STOPPED: duplicate check failed after retry' -ForegroundColor Red
                Write-Host "   File: $scaffoldPath" -ForegroundColor DarkGray
                $stopped = $true; break
            }
        }

        # ── 6.5. Correctness verification (generate mode) ──────────
        $verifyScript = Join-Path $QaScripts 'verify-correctness.ts'
        if (Test-Path $verifyScript) {
            Write-Step 'Verify' 'checking correctness...' 'Yellow'
            Push-Location $RepoRoot
            $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
            try {
                $verifyOutput = & npx tsx $verifyScript --migration=$scaffoldPath --brief 2>&1 | Out-String
                $verifyExit   = $LASTEXITCODE
            } finally {
                $ErrorActionPreference = $prevEAP
                Pop-Location
            }

            if ($verifyExit -eq 0) {
                Write-Step 'Verify' 'PASS'
            } else {
                Write-Step 'Verify' 'critical issues found — retrying' 'Red'

                # Send verification errors back to Claude for fixes
                $verifyRetryPrompt = @"
The migration at $($scaffoldPath.Replace('\','/')) has substantive correctness issues. Verification output:

$verifyOutput

Read the migration file. For each question flagged as "fail", fix the issue described. Common fixes:
- wrong_key: change correct_index to point to the actually correct choice
- arithmetic_error: recalculate and fix the numbers in stem/choices/explanation
- citation_error: fix or remove incorrect standard references
- distractor_also_correct: rewrite the distractor to be clearly wrong

Then re-validate: npm run validate-migration $($scaffoldPath.Replace('\','/'))

When fixed, output: ORCHESTRATOR_RESULT:{"status":"ok"}
If stuck: ORCHESTRATOR_RESULT:{"status":"error","message":"description"}
"@
                $verifyRetryFile = Join-Path $TempDir "verify_b${batchNum}.txt"
                $verifyRetryPrompt | Out-String | ForEach-Object { [System.IO.File]::WriteAllText($verifyRetryFile, $_) }

                Push-Location $RepoRoot
                $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
                try {
                    Get-Content $verifyRetryFile -Raw | claude --print --dangerously-skip-permissions 2>&1 | Out-Null
                } finally {
                    $ErrorActionPreference = $prevEAP
                    Pop-Location
                }

                # Re-verify
                Push-Location $RepoRoot
                $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
                try {
                    $verifyOutput2 = & npx tsx $verifyScript --migration=$scaffoldPath --brief 2>&1 | Out-String
                    $verifyExit2   = $LASTEXITCODE
                } finally {
                    $ErrorActionPreference = $prevEAP
                    Pop-Location
                }

                if ($verifyExit2 -eq 0) {
                    Write-Step 'Verify' 'fixed after retry'
                } else {
                    Write-Host ''
                    Write-Host '   STOPPED: verification failed after retry' -ForegroundColor Red
                    Write-Host "   File: $scaffoldPath" -ForegroundColor DarkGray
                    $stopped = $true; break
                }
            }
        }
    }

    # ── 6.9. Pre-commit guardrails ────────────────────────────
    if ($Mode -ne 'verify' -and (Test-Path $scaffoldPath)) {
        # Guard 1: Reject unfilled TODO scaffolds
        $todoHits = Select-String -Path $scaffoldPath -Pattern '\bTODO\b' -SimpleMatch
        if ($todoHits) {
            $todoCount = @($todoHits).Count
            Write-Host ''
            Write-Host "   STOPPED: migration contains $todoCount TODO placeholders — Claude did not fill the scaffold" -ForegroundColor Red
            Write-Host "   File: $scaffoldPath" -ForegroundColor DarkGray
            Write-Log "Guard  BLOCKED: $todoCount TODO placeholders in $scaffoldPath"
            $stopped = $true; break
        }

        # Guard 2: Reject duplicate migration numbers
        $migFilename = Split-Path $scaffoldPath -Leaf
        $migNum = $migFilename.Split('_')[0]
        $dupes = @(Get-ChildItem $Migrations -Filter "${migNum}_*" | Where-Object { $_.FullName -ne (Resolve-Path $scaffoldPath).Path })
        if ($dupes.Count -gt 0) {
            Write-Host ''
            Write-Host "   STOPPED: migration number $migNum already exists: $($dupes.Name -join ', ')" -ForegroundColor Red
            Write-Host "   File: $scaffoldPath" -ForegroundColor DarkGray
            Write-Log "Guard  BLOCKED: duplicate migration number $migNum"
            $stopped = $true; break
        }
    }

    # ── 7. Commit ──────────────────────────────────────────────
    $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
    if ($Mode -eq 'verify') {
        $verifiedIdsFile = Join-Path (Join-Path $RepoRoot 'docs') 'verified-ids.json'
        & git -C $RepoRoot add $TrackerFile $verifiedIdsFile 2>&1 | Out-Null
    } else {
        & git -C $RepoRoot add $scaffoldPath $TrackerFile 2>&1 | Out-Null
    }

    $commitBody = "$ModeLabel $su batch $batchNum ($batchCount questions) + tracker update"
    $commitMsgFile = Join-Path $TempDir "commit_b${batchNum}.txt"
    [System.IO.File]::WriteAllText($commitMsgFile, "$commitBody`n`nCo-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>`n")

    & git -C $RepoRoot commit --file=$commitMsgFile 2>&1 | Out-Null
    $commitHash = (& git -C $RepoRoot rev-parse --short HEAD).Trim()
    $ErrorActionPreference = $prevEAP
    Write-Step 'Commit' $commitHash

    # ── 7.5. Apply migration to DB (generate mode only) ────────
    # Without this, the next batch's selector sees stale DB counts and
    # keeps generating for already-filled topics, overshooting targets.
    if ($Mode -eq 'generate' -and (Test-Path $scaffoldPath)) {
        Push-Location $RepoRoot
        $prevEAP = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
        try {
            $migNum = [int]([System.IO.Path]::GetFileName($scaffoldPath).Split('_')[0])
            $applyOutput = & node scripts/apply-migrations.mjs --from=$migNum 2>&1 | Out-String
            if ($LASTEXITCODE -eq 0) {
                Write-Step 'Apply' 'migration applied to DB'
            } else {
                Write-Step 'Apply' 'WARNING: migration apply failed — DB counts may be stale' 'Yellow'
                Write-Log "Apply  WARNING: $applyOutput"
            }
        } finally {
            $ErrorActionPreference = $prevEAP
            Pop-Location
        }
    }

    # ── 8. Update running state ────────────────────────────────
    $totalQuestions += $batchCount
    $completedBatches++

    # Generate/verify modes don't use exclude IDs (selectors read from disk/DB directly)
    if ($Mode -ne 'generate' -and $Mode -ne 'verify') {
        foreach ($c in @($candidates)) { $excludeIds.Add([int]$c.id) }
    }

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

# ── Post-run sync: update blueprint.ts, generation-progress.md, generation-plan.json from live DB ──
if (-not $DryRun -and $completedBatches -gt 0) {
    Write-Host ''
    Write-Host '  Syncing question counts from live DB...' -ForegroundColor DarkCyan
    try {
        $syncOutput = & npm run sync-counts 2>&1
        $syncOutput | ForEach-Object { Write-Log "sync: $_" }
        Write-Host '  Sync complete — blueprint.ts, generation-progress.md, generation-plan.json updated' -ForegroundColor Green
    } catch {
        Write-Host "  Sync failed: $_" -ForegroundColor Yellow
        Write-Log "sync: FAILED — $_"
    }
}

# ── Cleanup ────────────────────────────────────────────────────
Remove-Item $TempDir -Recurse -Force -ErrorAction SilentlyContinue
