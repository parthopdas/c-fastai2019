Clear-Host

while ($true) { 
    [console]::SetCursorPosition(0, 0)
    nvidia-smi.exe
    Start-Sleep -Seconds 1
}
