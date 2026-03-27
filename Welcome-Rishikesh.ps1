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

function Show-Banner {
    Clear-Host

    # ASCII Art Banner
    $banner = @"
    ╔══════════════════════════════════════════════════════════════╗
    ║                                                              ║
    ║           >>> INITIALIZING SECURE TERMINAL <<<              ║
    ║                                                              ║
    ║   ██████╗ ██╗███████╗██╗  ██╗██╗██╗  ██╗███████╗███████╗██╗ ║
    ║   ██╔══██╗██║██╔════╝██║  ██║██║██║ ██╔╝██╔════╝██╔════╝██║ ║
    ║   ██████╔╝██║███████╗███████║██║█████╔╝ ███████╗███████╗██║ ║
    ║   ██╔══██╗██║╚════██║██╔══██║██║██╔═██╗ ╚════██║╚════██║██║ ║
    ║   ██║  ██║██║███████║██║  ██║██║██║  ██╗███████║███████║███║ ║
    ║   ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══╝ ║
    ║                                                              ║
    ╚══════════════════════════════════════════════════════════════╝

"@

    Write-Host $banner -ForegroundColor Cyan
    Start-Sleep -Milliseconds 500
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
    Start-Sleep -Milliseconds 800

    # System info section
    $infoBox = @"
    ╔══════════════════════════════════════════════════════════════╗
    ║                                                              ║
    ║   » WELCOME, MR. RISHI «                                    ║
    ║                                                              ║
    ║   » SYSTEM ONLINE                                           ║
    ║   » ALL SYSTEMS OPERATIONAL ✔                              ║
    ║                                                              ║
    ║   Host: $($env:COMPUTERNAME.PadRight(50))║
    ║   User: $($env:USERNAME.PadRight(50))║
    ║   Time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss'.PadRight(50))║
    ║                                                              ║
    ╚══════════════════════════════════════════════════════════════╝

"@

    Write-Host $infoBox -ForegroundColor Green
    Start-Sleep -Milliseconds 500
}

# Main execution
Show-Welcome
