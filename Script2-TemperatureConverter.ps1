do {

    Write-Host "Temperature Converter"
    Write-Host "1. Convert Celsius to Fahrenheit"
    Write-Host "2. Convert Fahrenheit to Celsius"
    Write-Host "3. Quit"
    Write-Host ""
    $choice = Read-Host "Enter your choice"

} while ($choice -ne "q")