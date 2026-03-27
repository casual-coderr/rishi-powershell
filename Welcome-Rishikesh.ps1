# ============================================================================
# Welcome-Rishikesh.ps1
#
# Run from GitHub:
# iex (iwr 'https://raw.githubusercontent.com/YOUR_USERNAME/REPO_NAME/main/Welcome-Rishikesh.ps1').Content
# ============================================================================

function Write-Typewriter {
    param([string]$Text, [string]$Color = "Cyan", [int]$Delay = 30)
    foreach ($char in $Text.ToCharArray()) {
        Write-Host $char -ForegroundColor $Color -NoNewline
        Start-Sleep -Milliseconds $Delay
    }
    Write-Host ""
}

function Show-ProgressBar {
    param([string]$Label, [string]$Color = "Cyan")
    Write-Host "  $Label " -ForegroundColor DarkGray -NoNewline
    Write-Host "[" -ForegroundColor DarkGray -NoNewline
    for ($i = 0; $i -lt 20; $i++) {
        Write-Host "█" -ForegroundColor $Color -NoNewline
        Start-Sleep -Milliseconds 30
    }
    Write-Host "]" -ForegroundColor DarkGray -NoNewline
    Write-Host " Done" -ForegroundColor Green
}

function Write-Glitch {
    param([string]$Text, [int]$GlitchAmount = 3)
    for ($i = 0; $i -lt $GlitchAmount; $i++) {
        $glitched = ""
        foreach ($char in $Text.ToCharArray()) {
            if ((Get-Random -Maximum 3) -eq 0) { $glitched += [char](Get-Random -Minimum 33 -Maximum 126) }
            else { $glitched += $char }
        }
        Write-Host "`r  $glitched" -ForegroundColor Magenta -NoNewline
        Start-Sleep -Milliseconds 80
    }
    Write-Host "`r  $Text" -ForegroundColor Cyan
}

Clear-Host
Write-Host ""

# Fade-in header line by line
$headerLines = @(
    "  ╔══════════════════════════════════════════════════════════════════════════╗",
    "  ║                                                                          ║",
    "  ║          >>> INITIALIZING SECURE TERMINAL <<<                           ║",
    "  ║                                                                          ║",
    "  ╚══════════════════════════════════════════════════════════════════════════╝"
)
foreach ($line in $headerLines) {
    Write-Host $line -ForegroundColor Cyan
    Start-Sleep -Milliseconds 60
}

Write-Host ""

# Smooth progress bars - friendly boot sequence
Show-ProgressBar "Loading profile  " -Color Cyan
Show-ProgressBar "Checking systems " -Color Cyan
Show-ProgressBar "Starting up      " -Color Cyan

Write-Host ""
Start-Sleep -Milliseconds 200

# ASCII Art - RISHIKESH, revealed line by line
$asciiLines = @(
    "  ██████╗ ██╗███████╗██╗  ██╗██╗██╗  ██╗███████╗███████╗██╗  ██╗",
    "  ██╔══██╗██║██╔════╝██║  ██║██║██║ ██╔╝██╔════╝██╔════╝██║  ██║",
    "  ██████╔╝██║███████╗███████║██║█████╔╝ █████╗  ███████╗███████║",
    "  ██╔══██╗██║╚════██║██╔══██║██║██╔═██╗ ██╔══╝  ╚════██║██╔══██║",
    "  ██║  ██║██║███████║██║  ██║██║██║  ██╗███████╗███████║██║  ██║",
    "  ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝"
)
foreach ($line in $asciiLines) {
    Write-Host $line -ForegroundColor Cyan
    Start-Sleep -Milliseconds 80
}

Write-Host ""

# Typewriter welcome line
Write-Host "  " -NoNewline
Write-Typewriter "» WELCOME, MR. RISHI" -Color White -Delay 45
Write-Host ""

# System info box
Write-Host "  ╭─────────────────────────────────────────╮" -ForegroundColor Green
Write-Host "  │  System Status: " -ForegroundColor Green -NoNewline
Write-Host "ONLINE" -ForegroundColor Cyan -NoNewline
Write-Host "                   │" -ForegroundColor Green
Write-Host "  │  Timestamp: " -ForegroundColor Green -NoNewline
Write-Host "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan -NoNewline
Write-Host "          │" -ForegroundColor Green
Write-Host "  │  Host: " -ForegroundColor Green -NoNewline
Write-Host "$env:COMPUTERNAME" -ForegroundColor Cyan -NoNewline
Write-Host "                          │" -ForegroundColor Green
Write-Host "  │  User: " -ForegroundColor Green -NoNewline
Write-Host "$env:USERNAME" -ForegroundColor Cyan -NoNewline
Write-Host "                             │" -ForegroundColor Green
Write-Host "  ╰─────────────────────────────────────────╯" -ForegroundColor Green
Write-Host ""

# Final checkmarks with slight delay between them
Start-Sleep -Milliseconds 150
Write-Host "  [✓] Authentication successful" -ForegroundColor Green
Start-Sleep -Milliseconds 150
Write-Host "  [✓] ALL SYSTEMS OPERATIONAL" -ForegroundColor Green
Write-Host ""
