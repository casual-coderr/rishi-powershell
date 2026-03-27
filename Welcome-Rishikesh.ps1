# ============================================================================
# Welcome-Rishikesh.ps1
# A cool hacking-style welcome script inspired by Chris Titus Tech
# Displays "Rishikesh" in a matrix/hacking style with a cool welcome message
#
# Run from GitHub:
# iex (iwr 'https://raw.githubusercontent.com/YOUR_USERNAME/REPO_NAME/main/Welcome-Rishikesh.ps1').Content
#
# Or with execution policy bypass:
# powershell -ExecutionPolicy Bypass -Command "iex (iwr 'https://raw.githubusercontent.com/YOUR_USERNAME/REPO_NAME/main/Welcome-Rishikesh.ps1').Content"
# ============================================================================

function Write-Matrix {
    param(
        [string]$Text,
        [int]$Delay = 50
    )

    $colors = @('Cyan', 'Green', 'White', 'Yellow')
    $chars = $Text.ToCharArray()

    foreach ($char in $chars) {
        $color = $colors | Get-Random
        Write-Host $char -ForegroundColor $color -NoNewline
        Start-Sleep -Milliseconds $Delay
    }
}

function Write-Glitch {
    param(
        [string]$Text,
        [int]$GlitchAmount = 3
    )

    for ($i = 0; $i -lt $GlitchAmount; $i++) {
        $glitched = ""
        foreach ($char in $Text.ToCharArray()) {
            if ((Get-Random -Maximum 3) -eq 0) {
                $glitched += [char](Get-Random -Minimum 33 -Maximum 126)
            }
            else {
                $glitched += $char
            }
        }
        Write-Host "`r$glitched" -ForegroundColor Magenta -NoNewline
        Start-Sleep -Milliseconds 80
    }
    Write-Host "`r$Text" -ForegroundColor Cyan
}

function Show-Banner {
    Clear-Host

    # ASCII Art Banner
    $banner = @"

    ╔═══════════════════════════════════════════════════════════╗
    ║                                                           ║
    ║          >>> INITIALIZING SECURE TERMINAL <<<            ║
    ║                                                           ║
    ╚═══════════════════════════════════════════════════════════╝

"@

    Write-Host $banner -ForegroundColor Cyan
    Start-Sleep -Milliseconds 300
}

function Show-Loading {
    $frames = @('⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏')

    Write-Host "  " -NoNewline
    for ($i = 0; $i -lt 15; $i++) {
        Write-Host "`b$($frames[$i % $frames.Count])" -ForegroundColor Green -NoNewline
        Start-Sleep -Milliseconds 100
    }
    Write-Host "`b✓" -ForegroundColor Green
    Write-Host ""
}

function Show-Welcome {
    Clear-Host

    Show-Banner

    Write-Host "  [*] Scanning system credentials..." -ForegroundColor Yellow
    Show-Loading

    Write-Host "  [*] Establishing secure connection..." -ForegroundColor Yellow
    Show-Loading

    Write-Host "  [*] Loading user profile..." -ForegroundColor Yellow
    Show-Loading

    Write-Host ""
    Start-Sleep -Milliseconds 500

    # Main display
    Write-Host "  " -NoNewline
    Write-Matrix "Rishikesh" -Delay 100
    Write-Host ""
    Write-Host ""

    Start-Sleep -Milliseconds 300

    # Glitch effect with message
    Write-Host "  " -NoNewline
    Write-Glitch "Welcome Mr Rishi" -GlitchAmount 2

    Write-Host ""
    Start-Sleep -Milliseconds 500

    # System info section
    Write-Host "  ╭─────────────────────────────────────────╮" -ForegroundColor Green
    Write-Host "  │" -ForegroundColor Green -NoNewline
    Write-Host "  System Status: ONLINE" -ForegroundColor Cyan -NoNewline
    Write-Host "                   │" -ForegroundColor Green
    Write-Host "  │" -ForegroundColor Green -NoNewline
    Write-Host "  Timestamp: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Cyan -NoNewline
    Write-Host "  │" -ForegroundColor Green
    Write-Host "  │" -ForegroundColor Green -NoNewline
    Write-Host "  Host: $env:COMPUTERNAME" -ForegroundColor Cyan -NoNewline
    Write-Host "                     │" -ForegroundColor Green
    Write-Host "  │" -ForegroundColor Green -NoNewline
    Write-Host "  User: $env:USERNAME" -ForegroundColor Cyan -NoNewline
    Write-Host "                        │" -ForegroundColor Green
    Write-Host "  ╰─────────────────────────────────────────╯" -ForegroundColor Green

    Write-Host ""
    Write-Host "  [✓] Authentication successful" -ForegroundColor Green
    Write-Host "  [✓] Welcome sequence complete" -ForegroundColor Green
    Write-Host ""
    Write-Host "  Type 'exit' to terminate session" -ForegroundColor Yellow
    Write-Host ""
}

# Main execution
Show-Welcome
