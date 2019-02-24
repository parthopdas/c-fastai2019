$cudaAvailable = python -c "import torch; print(torch.cuda.is_available())"
if ($cudaAvailable) {
    Write-Host -ForegroundColor Green "CUDA available!"
} else {
    Write-Host -ForegroundColor Red "CUDA not available!"
}

$cuDNNEnabled = python -c "import torch; print(torch.backends.cudnn.enabled)"
if ($cuDNNEnabled) {
    Write-Host -ForegroundColor Green "Torch cuDNN enabled!"
} else {
    Write-Host -ForegroundColor Red "Torch cuDNN disabled!"
}
