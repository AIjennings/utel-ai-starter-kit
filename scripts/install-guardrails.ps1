param(
    [Parameter(Mandatory=$false)]
    [string]$YourName = $env:USERNAME
)

$SourceDir = Split-Path -Parent $PSScriptRoot
$AgentsContent = (Get-Content "$SourceDir\AGENTS.md" -Raw).Replace("[Your name here]", $YourName)
$ClaudeContent = Get-Content "$SourceDir\CLAUDE.md" -Raw

$Targets = @(
    @{ Name = "Google Antigravity"; Dir = "$env:USERPROFILE\.gemini"; Files = @("AGENTS.md") },
    @{ Name = "OpenAI Codex";       Dir = "$env:USERPROFILE\.codex";  Files = @("AGENTS.md") },
    @{ Name = "Claude Code";        Dir = "$env:USERPROFILE\.claude"; Files = @("AGENTS.md", "CLAUDE.md") }
)

foreach ($t in $Targets) {
    if (-not (Test-Path $t.Dir)) {
        New-Item -ItemType Directory -Path $t.Dir -Force | Out-Null
    }
    Set-Content -Path (Join-Path $t.Dir "AGENTS.md") -Value $AgentsContent -Encoding UTF8
    if ($t.Files -contains "CLAUDE.md") {
        Set-Content -Path (Join-Path $t.Dir "CLAUDE.md") -Value $ClaudeContent -Encoding UTF8
    }
    Write-Host "[OK] Installed persistent guardrails for $($t.Name) in $($t.Dir)" -ForegroundColor Green
}

Write-Host "`nDone! Personalized for: $YourName" -ForegroundColor Cyan
Write-Host "Verify by opening your AI tool and asking: 'What persistent instructions are you following?'" -ForegroundColor Yellow
