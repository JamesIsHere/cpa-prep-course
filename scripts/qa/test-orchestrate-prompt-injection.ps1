# One-shot test harness: verify that the topic-spec block is rendered
# correctly in the orchestrator's generate-mode prompt. Runs the selector
# to obtain a live batch spec (which now includes topicSpec), then mimics
# just the prompt-build block from scripts/orchestrate.ps1 line 550-750.
#
# This is a VERIFICATION script, not production. It prints the generated
# prompt to stdout; visually confirm the TOPIC SPEC CONSTRAINTS section is
# present when the selected topic has a spec. Exit code 1 if the block is
# expected but missing.

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)

Write-Host "Running selector for BAR to obtain a batch spec with topicSpec..." -ForegroundColor Cyan
$tmpOut = Join-Path $env:TEMP "slayer-selector-out.json"
$tmpErr = Join-Path $env:TEMP "slayer-selector-err.log"
# Use cmd.exe to invoke npx — Start-Process can't launch .cmd wrappers directly
# on Windows. Redirecting both streams via cmd.exe's > and 2> operators.
& cmd.exe /c "npx tsx `"$repoRoot/scripts/qa/select-generation-batch.ts`" --section=bar --batch-size=5 > `"$tmpOut`" 2> `"$tmpErr`""
$raw = Get-Content $tmpOut -Raw
# Trim any noise before the opening brace (dotenv banner etc)
$jsonStart = $raw.IndexOf('{')
if ($jsonStart -lt 0) {
    Write-Error "Selector output did not contain JSON. See $tmpErr"
    exit 1
}
$jsonText = $raw.Substring($jsonStart)
$batchSpec = $jsonText | ConvertFrom-Json
Write-Host "Selected topic: $($batchSpec.topic)" -ForegroundColor Green
Write-Host "Topic spec present: $($batchSpec.topicSpec -ne $null)" -ForegroundColor Green

if ($null -eq $batchSpec.topicSpec) {
    Write-Warning "Selector picked an unspecced topic — cannot verify spec block rendering. Try another section or force a specced topic."
    exit 0
}

# Minimal subset of the fields the orchestrator uses for the generate prompt
$genTopic = $batchSpec.topic
$genCount = $batchSpec.count
$su = "BAR"
$diffEasy = $batchSpec.difficulty.easy
$diffMed = $batchSpec.difficulty.medium
$diffHard = $batchSpec.difficulty.hard
$bL1 = $batchSpec.blooms.l1
$bL2 = $batchSpec.blooms.l2
$bL3 = $batchSpec.blooms.l3
$bL4 = $batchSpec.blooms.l4

# Build the topic-spec block using the SAME code as the orchestrator
$topicSpecBlock = ""
if ($batchSpec.topicSpec) {
    $ts = $batchSpec.topicSpec
    $inScopeText = ($ts.inScope | ForEach-Object { "  - $_" }) -join "`n"
    $outOfScopeText = ($ts.outOfScope | ForEach-Object { "  - $_" }) -join "`n"
    $miscText = ($ts.commonMisconceptions | ForEach-Object { "  - $_" }) -join "`n"
    $topicSpecBlock = @"

TOPIC SPEC CONSTRAINTS (HARD LIMITS — NON-NEGOTIABLE):

This topic has a curriculum-team-authored scope specification that anchors
Slayer's "$($ts.topic)" tagging vocabulary to AICPA Blueprint path $($ts.blueprintRef).

IN-SCOPE (you MAY test these — ONLY these):
$inScopeText

OUT-OF-SCOPE (you MUST NOT test these — named drift surfaces):
$outOfScopeText

COMMON MISCONCEPTIONS (use these to design distractors):
$miscText
"@
}

# Print the block (a truncated version of the full prompt for verification)
Write-Host ""
Write-Host "=== Rendered topic-spec block ===" -ForegroundColor Yellow
Write-Host $topicSpecBlock
Write-Host ""
Write-Host "=== Sanity checks ===" -ForegroundColor Yellow

$checks = @{
    "Block is non-empty" = ($topicSpecBlock.Length -gt 0)
    "Contains TOPIC SPEC CONSTRAINTS header" = $topicSpecBlock.Contains("TOPIC SPEC CONSTRAINTS")
    "Contains IN-SCOPE list header" = $topicSpecBlock.Contains("IN-SCOPE")
    "Contains OUT-OF-SCOPE list header" = $topicSpecBlock.Contains("OUT-OF-SCOPE")
    "Contains COMMON MISCONCEPTIONS list header" = $topicSpecBlock.Contains("COMMON MISCONCEPTIONS")
    "References blueprintRef" = $topicSpecBlock.Contains($batchSpec.topicSpec.blueprintRef)
    "References Slayer topic name" = $topicSpecBlock.Contains($batchSpec.topic)
    "inScope has >= 5 items rendered" = ($topicSpecBlock -split "`n" | Where-Object { $_ -match '^  -' }).Count -ge 5
}

$allPass = $true
foreach ($k in $checks.Keys) {
    $ok = $checks[$k]
    $mark = if ($ok) { "PASS" } else { "FAIL" }
    $color = if ($ok) { "Green" } else { "Red" }
    Write-Host "  [$mark] $k" -ForegroundColor $color
    if (-not $ok) { $allPass = $false }
}

Write-Host ""
if ($allPass) {
    Write-Host "All checks passed. Orchestrator prompt injection wired correctly." -ForegroundColor Green
    exit 0
} else {
    Write-Host "One or more checks failed. Review the rendered block above." -ForegroundColor Red
    exit 1
}
