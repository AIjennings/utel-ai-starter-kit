param(
    [Parameter(Mandatory=$false)]
    [string]$YourName = $env:USERNAME
)

$SourceDir = Split-Path -Parent $PSScriptRoot

Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host " Utel USA x Aria Technology Group — Standards & Skills Updater" -ForegroundColor Cyan
Write-Host "=================================================================" -ForegroundColor Cyan

# Pull latest updates if this folder is a git clone
if (Test-Path "$SourceDir\.git") {
    Write-Host "[1/3] Pulling latest Utel USA guardrails & skills from GitHub..." -ForegroundColor Yellow
    git -C $SourceDir pull --ff-only origin main
}

$AgentsContent = (Get-Content "$SourceDir\AGENTS.md" -Raw).Replace("[Your name here]", $YourName)
$ClaudeContent = Get-Content "$SourceDir\CLAUDE.md" -Raw

$Targets = @(
    @{ Name = "Google Antigravity"; Dir = "$env:USERPROFILE\.gemini"; Files = @("AGENTS.md") },
    @{ Name = "OpenAI Codex";       Dir = "$env:USERPROFILE\.codex";  Files = @("AGENTS.md") },
    @{ Name = "Claude Code";        Dir = "$env:USERPROFILE\.claude"; Files = @("AGENTS.md", "CLAUDE.md") }
)

Write-Host "[2/3] Updating persistent AGENTS.md & CLAUDE.md guardrails..." -ForegroundColor Yellow
foreach ($t in $Targets) {
    if (-not (Test-Path $t.Dir)) {
        New-Item -ItemType Directory -Path $t.Dir -Force | Out-Null
    }
    Set-Content -Path (Join-Path $t.Dir "AGENTS.md") -Value $AgentsContent -Encoding UTF8
    if ($t.Files -contains "CLAUDE.md") {
        Set-Content -Path (Join-Path $t.Dir "CLAUDE.md") -Value $ClaudeContent -Encoding UTF8
    }
    Write-Host "  [OK] Synced $($t.Name) -> $($t.Dir)" -ForegroundColor Green
}

Write-Host "[3/3] Installing Utel USA Company Skills (SKILL.md packs)..." -ForegroundColor Yellow
$SkillTargets = @(
    "$env:USERPROFILE\.gemini\config\skills",
    "$env:USERPROFILE\.claude\skills",
    "$env:USERPROFILE\.codex\skills"
)

if (Test-Path "$SourceDir\skills") {
    $SkillFolders = Get-ChildItem "$SourceDir\skills" -Directory
    foreach ($st in $SkillTargets) {
        if (-not (Test-Path $st)) {
            New-Item -ItemType Directory -Path $st -Force | Out-Null
        }
        foreach ($sf in $SkillFolders) {
            $DestSkillDir = Join-Path $st $sf.Name
            if (-not (Test-Path $DestSkillDir)) {
                New-Item -ItemType Directory -Path $DestSkillDir -Force | Out-Null
            }
            Copy-Item "$($sf.FullName)\*" -Destination $DestSkillDir -Recurse -Force
        }
        Write-Host "  [OK] Installed $($SkillFolders.Count) Utel Company Skills -> $st" -ForegroundColor Green
    }
}

Write-Host "`n[COMPLETE] Utel USA x Aria Standard v2.0 (Guardrails + Company Skills) is active for $YourName!" -ForegroundColor Cyan
Write-Host "Test it in your AI tool by asking: 'What persistent instructions and Utel skills are you following?'" -ForegroundColor Yellow
