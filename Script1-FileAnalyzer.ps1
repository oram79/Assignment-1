#Script 3 

$low = 50
$high = 100

Write-Host "File Size Analyzer"
$directory = read-host "Enter a directory path"
$files = get-childitem -Path $directory -File | Sort-Object