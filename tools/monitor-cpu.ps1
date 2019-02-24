Clear-Host

function Get-CPUProcess
{
    $properties=@(
        @{Name="Name"; Expression = {$_.name.PadRight(20,' ').SubString(0, 20)}},
        @{Name="PID"; Expression = {$_.IDProcess}},
        @{Name="CPU (%)"; Expression = {$_.PercentProcessorTime}},
        @{Name="Memory (MB)"; Expression = {[Math]::Round(($_.workingSetPrivate / 1mb),2)}}
        @{Name="Disk (MB)"; Expression = {[Math]::Round(($_.IODataOperationsPersec / 1mb),2)}}
    )
    $ProcessCPU = Get-WmiObject -class Win32_PerfFormattedData_PerfProc_Process |
        Select-Object $properties |
        Where-Object Name -NotMatch "Idle" |
        Where-Object Name -NotMatch "Total" |
        Sort-Object "CPU (%)" -desc |
        Select-Object -First 10 |
        Format-Table -AutoSize
        $ProcessCPU
}

while ($true) {
    [console]::SetCursorPosition(0, 0)
    Get-CPUProcess
}
