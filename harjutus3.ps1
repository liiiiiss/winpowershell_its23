# 6. Wildcards

Write-Host "Wildcard examples" -ForegroundColor Cyan

# Exact service
Get-Service ALG

# Services starting with App
Get-Service App*

# Services starting with A
Get-Service A*

# Services matching single character (example)
Get-Service A?g*

# Range example
Get-Service [b-d]*


# 7. Pipeline

Write-Host "`Pipeline example" -ForegroundColor Cyan
Get-Service | Select-Object -First 5


# 8. Format-List, Format-Table, Select-Object

Write-Host "`Format-List example" -ForegroundColor Cyan
Get-Date | Format-List *

Write-Host "`Select-Object example" -ForegroundColor Cyan
Get-Service | Select-Object Name, Status -First 5

Write-Host "`Format-Table with AutoSize example" -ForegroundColor Cyan
Get-Service | Select-Object Name, DisplayName | Format-Table -AutoSize

Write-Host "`Sorted services example" -ForegroundColor Cyan
Get-Service | Sort-Object Name | Select-Object Name, Status -First 5 | Format-Table


# 9. Read-Host and Write-Host (Practice 3 )

$name = Read-Host "`What is your name"

Write-Host "Hello, $name" -ForegroundColor Green