Clear-Host

$nvsmiExe = "nvidia-smi.exe"
$nvsmi = "$($(Get-ItemProperty "HKLM:\SOFTWARE\NVIDIA Corporation\Global\NVSMI" -ea SilentlyContinue).NVSMIPATH)\$nvsmiExe"
if (-not (Test-Path $nvsmi)) { $nvsmi = "$env:windir\System32\$nvsmiExe" }
if (-not (Test-Path $nvsmi)) { $nvsmi = $nvsmiExe }

while ($true) { 
    [console]::SetCursorPosition(0, 0)
    & $nvsmi
    Start-Sleep -Seconds 1
}
