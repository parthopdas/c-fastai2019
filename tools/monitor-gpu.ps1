Clear-Host

while ($true) { 
    [console]::SetCursorPosition(0, 0)
    nvidia-smi; 
    Start-Sleep -Seconds 1
}
