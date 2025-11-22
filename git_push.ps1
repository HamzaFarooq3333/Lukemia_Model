# Git Add, Commit, and Push Script
# Usage: .\git_push.ps1 "Your commit message"

param(
    [Parameter(Mandatory=$true)]
    [string]$CommitMessage
)

# Navigate to repository directory
Set-Location -Path $PSScriptRoot

# Check if we're in a git repository
if (-not (Test-Path .git)) {
    Write-Host "Error: Not a git repository!" -ForegroundColor Red
    exit 1
}

# Show current status
Write-Host "Current git status:" -ForegroundColor Cyan
git status

# Add all changes
Write-Host "`nAdding all changes..." -ForegroundColor Yellow
git add .

# Show what will be committed
Write-Host "`nStaged changes:" -ForegroundColor Cyan
git status

# Commit changes
Write-Host "`nCommitting changes..." -ForegroundColor Yellow
git commit -m $CommitMessage

# Push to remote
Write-Host "`nPushing to remote repository..." -ForegroundColor Yellow
git push origin main

# If main branch doesn't exist, try master
if ($LASTEXITCODE -ne 0) {
    Write-Host "Trying master branch..." -ForegroundColor Yellow
    git push origin master
}

Write-Host "`nDone!" -ForegroundColor Green

