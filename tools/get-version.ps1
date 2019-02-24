param (
    [IO.FileInfo] $file
)

"{0} -> {1}" -f $file.Name,[Diagnostics.FileVersionInfo]::GetVersionInfo($file.FullName).FileVersion