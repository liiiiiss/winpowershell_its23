Start-Process notepad
Start-Process notepad

Start-Sleep -Seconds 2

Get-Process -Name notepad | Select-Object ProcessName, Id 
# Create folder
New-Item -Path "C:\Temp\Test" -ItemType Directory -Force

# Show total files in folder
$files = Get-ChildItem "C:\Temp\Test"

Write-Host "Total files in folder:" $files.Count -ForegroundColor Yellow

# Find only CSV file
$csvFile = Get-ChildItem "C:\Temp\Test" -Filter *.csv

# Display size in KB and MB
foreach ($file in $csvFile) {

    $sizeKB = [math]::Round($file.Length / 1KB, 2)
    $sizeMB = [math]::Round($file.Length / 1MB, 2)

    Write-Host "File Name:" $file.Name -ForegroundColor Green
    Write-Host "Size in KB:" $sizeKB
    Write-Host "Size in MB:" $sizeMB
}