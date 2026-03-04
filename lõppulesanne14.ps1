
# system_report.ps1




$reportFile = "report.txt"


if (Test-Path $reportFile) {
    Remove-Item $reportFile
}


function Write-Report {
    param (
        [string]$Text
    )
    Write-Host $Text
    $Text | Out-File -FilePath $reportFile -Append
}


# 1. Kasutaja sisend


$name = Read-Host "Sisesta oma nimi"
$countInput = Read-Host "Mitu korda tervitust kuvada?"


if (-not ($countInput -match '^\d+$')) {
    Write-Host "Viga: Palun sisesta korrektne arv!"
    exit
}

$count = [int]$countInput

Write-Report "Raport loodud: $(Get-Date)"
Write-Report "================================="
Write-Report ""


# 2. Tsükkel (for)


for ($i = 1; $i -le $count; $i++) {
    Write-Report "Tere, $name! ($i)"
}

Write-Report ""
Write-Report "=== Süsteemiinfo ==="


# 3. Süsteemiinfo


Write-Report "Arvuti nimi: $env:COMPUTERNAME"
Write-Report "Sisselogitud kasutaja: $env:USERNAME"
Write-Report "PowerShelli versioon: $($PSVersionTable.PSVersion)"

Write-Report ""


# 4. Cmdlet’ide kasutamine


Write-Report "=== 3 töötavat protsessi ==="

Get-Process | Select-Object -First 3 Name, Id |
ForEach-Object {
    Write-Report "$($_.Name) - ID: $($_.Id)"
}

Write-Report ""

Write-Report "=== 3 teenust ==="

Get-Service | Select-Object -First 3 Name, Status |
ForEach-Object {
    Write-Report "$($_.Name) - Staatus: $($_.Status)"
}

Write-Report ""


# 5. Tingimuslause (if)


if ($PSVersionTable.PSVersion.Major -lt 5) {
    Write-Report "HOIATUS: PowerShelli versioon on alla 5!"
}
else {
    Write-Report "PowerShelli versioon on sobiv."
}

Write-Report ""


# 7. Lõppteade


Write-Host "==========================="
Write-Host "Script finished successfully"
Write-Host "==========================="

"===========================" | Out-File -FilePath $reportFile -Append
"Script finished successfully" | Out-File -FilePath $reportFile -Append
"===========================" | Out-File -FilePath $reportFile -Append