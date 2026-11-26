#Script 3 

$low = 50
$high = 100

Write-Host "File Size Analyzer"
$directory = read-host "Enter a directory path"
$files = get-childitem -Path $directory -File | Sort-Object Length -Descending

foreach ($file in $files) {

    if ($file.Length -lt $low) {
        $category = "Small"
    } elseif ($file.Length -lt $high) {
        $category = "Medium"
    } else {
        $category = "Large"
    }
    Write-Host ($file.Name + " | " + $file.Length + " Bytes | " + $category)
}