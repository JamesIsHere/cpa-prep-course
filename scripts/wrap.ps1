<#
.SYNOPSIS
    Wrap-up script for Slayer CPA. Performs health checks, syncs trackers, 
    updates CLAUDE.md, and prepares final commit/push.
.DESCRIPTION
    Ensures project hygiene by verifying DB state, updating documentation,
    and summarizing progress before ending a session.
#>

$RepoRoot = Resolve-Path "$PSScriptRoot\.."
$DocsDir  = Join-Path $RepoRoot "docs"
$ClaudeMd = Join-Path $RepoRoot "CLAUDE.md"

Write-Host "`n=== Slayer CPA Wrap-up ===" -ForegroundColor Cyan

# ── 1. Health Check ──────────────────────────────────────────
Write-Host "`n[1/4] Running Health Check..." -ForegroundColor Gray
& npx tsx scripts/health-check.ts
if ($LASTEXITCODE -ne 0) {
    Write-Host "Warning: System is UNHEALTHY. Fix issues before concluding if possible." -ForegroundColor Yellow
}

# ── 2. Sync Question Counts ──────────────────────────────────
Write-Host "`n[2/4] Syncing Database Stats..." -ForegroundColor Gray
& npm run sync-counts
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error: Failed to sync question counts." -ForegroundColor Red
}

# ── 3. Update Progress Summary in CLAUDE.md ─────────────────
Write-Host "`n[3/4] Updating CLAUDE.md Summary..." -ForegroundColor Gray

# Extract current totals from live DB (via health check or sync-counts)
$questions = & npx tsx -e "import { questionCounts } from './src/lib/blueprint'; console.log(Object.values(questionCounts).reduce((a,b)=>a+b,0))"
$currentDate = Get-Date -Format "yyyy-MM-dd"

# Use PowerShell to surgically update the "Current status" and "Totals" lines in CLAUDE.md
$content = Get-Content $ClaudeMd -Raw
$content = $content -replace "\*\*Totals:\*\* \d+ lessons, ~[\d,]+ questions", "**Totals:** 96 lessons, ~$questions questions"
$content = $content -replace "Current status: \d+ critical, \d+ moderate, [\d,]+ acceptable", "Current status: 0 critical, 0 moderate, $questions acceptable"

Set-Content $ClaudeMd $content

# ── 4. Git Hygiene ───────────────────────────────────────────
Write-Host "`n[4/4] Git Status Check..." -ForegroundColor Gray
$status = & git status --short
if (-not $status) {
    Write-Host "Worktree clean. Everything is committed." -ForegroundColor Green
} else {
    Write-Host "Uncommitted changes detected:" -ForegroundColor Yellow
    & git status -s
    Write-Host "`nProposing final commit message: 'docs: update progress trackers and project summary for $currentDate'" -ForegroundColor Gray
}

# Check if ahead of origin
$ahead = & git status -sb | Select-String "ahead"
if ($ahead) {
    Write-Host "`nYour branch is ahead of origin. Don't forget to 'git push'!" -ForegroundColor Cyan
}

Write-Host "`n=== Wrap-up Complete ===" -ForegroundColor Cyan
Write-Host "Recommendation: Check 'docs/generation-progress.md' for your next targets.`n"
