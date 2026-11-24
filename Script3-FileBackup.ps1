## Script 3 ##
Clear-Host

write-host "Selective File Backup"

write-host ""
$srcDirectory = read-host "Enter Source Directory"
$dtnDirectory = read-host "Enter Destination Directory"
$extension = read-host "Enter File Extension"
write-host ""

$files = Get-ChildItem -Path $srcDirectory -File
$count = 0

foreach ($file in $files){
    if($file.Extension -eq $extension){
        write-host ("Copying " + $file.name)
        copy-item -path $file.FullName -Destination $dtnDirectory
        $count++
    }
}

write-host ""
Write-Host ("Backup Finished, " + $count + " files copied.")
write-host ""