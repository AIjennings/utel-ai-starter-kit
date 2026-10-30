param(
    [Parameter(Mandatory=$false)]
    [string]$TargetFolder = (Get-Location).Path
)

$SourceDir = Split-Path -Parent $PSScriptRoot
Write-Host "Installing Utel USA x Aria AI Security Standard into: $TargetFolder" -ForegroundColor Cyan

if (-not (Test-Path $TargetFolder)) {
    New-Item -ItemType Directory -Path $TargetFolder -Force | Out-Null
}

Copy-Item "$SourceDir\AGENTS.md" -Destination "$TargetFolder\AGENTS.md" -Force
Copy-Item "$SourceDir\CLAUDE.md" -Destination "$TargetFolder\CLAUDE.md" -Force
Copy-Item "$SourceDir\SECURITY_STANDARD.md" -Destination "$TargetFolder\SECURITY_STANDARD.md" -Force
Copy-Item "$SourceDir\.cursorrules" -Destination "$TargetFolder\.cursorrules" -Force

if (-not (Test-Path "$TargetFolder\.gitignore")) {
    Copy-Item "$SourceDir\.gitignore" -Destination "$TargetFolder\.gitignore" -Force
}

Write-Host "[OK] Installed AGENTS.md, CLAUDE.md, SECURITY_STANDARD.md, and .cursorrules!" -ForegroundColor Green
Write-Host "Ready for Google Antigravity, Claude Code, OpenAI Codex, and Cursor." -ForegroundColor Yellow
