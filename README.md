# StayActiveBot

## Introduction
Are you often so engrossed in finding solutions that you forget to move your mouse and inadvertently go "inactive" on Slack? StayActiveBot to the rescue! This PowerShell script ensures you're always seen as active by subtly moving your cursor at regular intervals. It's fun, a bit cheeky, and keeps you "online"!

## How It Works
The script periodically changes your cursor's position on the screen. This movement is minimal but enough to maintain your active status on Slack. Just run it, and forget about manually nudging your mouse!

## Features
- **Automatic Cursor Movement**: Keeps your cursor moving without your input.
- **Customizable Intervals**: Currently set to move every 3 seconds, but easily adjustable.
- **Logging**: Outputs a fun message with each move, so you can see the script in action.

## Requirements
- PowerShell
- Windows Operating System

## Usage
1. Open PowerShell.
2. Copy and paste the script.
3. Hit Enter and watch your cursor dance!

## Code
```powershell
Add-Type -AssemblyName System.Windows.Forms

function Write-Log {
    param([string]$message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "${timestamp}: $message"
}

while ($true) {
  $Pos = [System.Windows.Forms.Cursor]::Position
  $x = ($pos.X % 500) + 10
  $y = ($pos.Y % 500) + 10
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)

  Write-Log "Cursor moved to X: $x Y: $y 🚀"

  Start-Sleep -Seconds 3
}
