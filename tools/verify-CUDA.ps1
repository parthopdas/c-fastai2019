$cudaAvailable = python -c "import torch; print(torch.cuda.is_available())"
if ($cudaAvailable -ieq [bool]::TrueString) {
    Write-Host -ForegroundColor Green "CUDA available!"
} else {
    Write-Host -ForegroundColor Red "CUDA not available!"
}

$cuDNNEnabled = python -c "import torch; print(torch.backends.cudnn.enabled)"
if ($cuDNNEnabled -ieq [bool]::TrueString) {
    Write-Host -ForegroundColor Green "Torch cuDNN enabled!"
} else {
    Write-Host -ForegroundColor Red "Torch cuDNN disabled!"
}

<#
print(fastai.__version__)
print(torch.__version__)
print(torch.version.cuda)
print(torch.bac:sob:kends.cudnn.version())
#>