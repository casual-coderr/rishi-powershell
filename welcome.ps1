# ============================================================================
# Welcome-Rishikesh.ps1
#
# Run
# iex (iwr 'https://rishikesh.dk/welcome.txt').Content
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
    "  ║          >>> INITIALIZING SECURE TERMINAL <<<                            ║",
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

# Menu
Write-Host "  ╭─────────────────────────────────────────╮" -ForegroundColor DarkCyan
Write-Host "  │     WHAT WOULD YOU LIKE TO DO?          │" -ForegroundColor DarkCyan
Write-Host "  │                                         │" -ForegroundColor DarkCyan
Write-Host "  │  [1] " -ForegroundColor DarkCyan -NoNewline
Write-Host "Launch Chris Titus WinUtil" -ForegroundColor White -NoNewline
Write-Host "          │" -ForegroundColor DarkCyan
Write-Host "  │  [2] " -ForegroundColor DarkCyan -NoNewline
Write-Host "HW Monitor (HWiNFO portable)" -ForegroundColor White -NoNewline
Write-Host "    │" -ForegroundColor DarkCyan
Write-Host "  │  [3] " -ForegroundColor DarkCyan -NoNewline
Write-Host "DNS Ping Tester" -ForegroundColor White -NoNewline
Write-Host "                  │" -ForegroundColor DarkCyan
Write-Host "  │  [4] " -ForegroundColor DarkCyan -NoNewline
Write-Host "Speed Test (Speedtest CLI)" -ForegroundColor White -NoNewline
Write-Host "        │" -ForegroundColor DarkCyan
Write-Host "  │  [5] " -ForegroundColor DarkCyan -NoNewline
Write-Host "Exit" -ForegroundColor White -NoNewline
Write-Host "                              │" -ForegroundColor DarkCyan
Write-Host "  │                                         │" -ForegroundColor DarkCyan
Write-Host "  ╰─────────────────────────────────────────╯" -ForegroundColor DarkCyan
Write-Host ""
$running = $true
while ($running) {
    Write-Host "  Choose " -ForegroundColor DarkGray -NoNewline
    Write-Host "[1-5]" -ForegroundColor Cyan -NoNewline
    Write-Host ": " -ForegroundColor DarkGray -NoNewline
    $choice = Read-Host

    switch ($choice) {
        "1" {
            Write-Host ""
            Write-Host "  Launching Chris Titus WinUtil..." -ForegroundColor Cyan
            Start-Sleep -Milliseconds 500
            iex ([System.Text.Encoding]::UTF8.GetString((iwr -UseBasicParsing 'https://christitus.com/win').Content))
        }
        "2" {
            Write-Host ""
            Write-Host "  Installing/launching HWMonitor via winget..." -ForegroundColor Cyan
            winget install --id CPUID.HWMonitor -e --silent
        }
        "3" {
            Write-Host ""
            Write-Host "  Launching DNS Ping Tester (requires admin)..." -ForegroundColor Cyan
            Start-Sleep -Milliseconds 300
            $script = (iwr -UseBasicParsing 'https://raw.githubusercontent.com/casual-coderr/Ping-Tester/refs/heads/master/command.ps1').Content
            $tmpFile = "$env:TEMP\dns_ping_tester.ps1"
            [System.IO.File]::WriteAllText($tmpFile, $script)
            Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$tmpFile`"" -Verb RunAs
        }
        "4" {
            Write-Host ""
            Write-Host "  Running Speed Test..." -ForegroundColor Cyan
            Start-Sleep -Milliseconds 300
            $stDir = "$env:TEMP\speedtest-cli"
            $stExe = "$stDir\speedtest.exe"
            if (-not (Test-Path $stExe)) {
                Write-Host "  Downloading Speedtest CLI..." -ForegroundColor DarkGray
                $zipPath = "$env:TEMP\speedtest.zip"
                Invoke-WebRequest -Uri "https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-win64.zip" -OutFile $zipPath -UseBasicParsing
                Expand-Archive -Path $zipPath -DestinationPath $stDir -Force
                Remove-Item $zipPath -Force
            }
            & $stExe
        }
        default {
            Write-Host ""
            Write-Host "  Goodbye, Mr. Rishi." -ForegroundColor DarkGray
            Write-Host ""
            $running = $false
        }
    }

    if ($running) {
        Write-Host ""
        Write-Host "  Return to menu? " -ForegroundColor DarkGray -NoNewline
        Write-Host "[Y/N]" -ForegroundColor Cyan -NoNewline
        Write-Host ": " -ForegroundColor DarkGray -NoNewline
        $again = Read-Host
        if ($again -notmatch '^[Yy]$') {
            Write-Host ""
            Write-Host "  Goodbye, Mr. Rishi." -ForegroundColor DarkGray
            Write-Host ""
            $running = $false
        } else {
            Write-Host ""
        }
    }
}
