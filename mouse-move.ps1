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
# Credit Wahib Makdmi and Moetaz Brayek
