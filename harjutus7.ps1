
# Harjutus 7



$groups = @("Red", "Green", "Yellow", "Blue")


$result = @()


for ($i = 1; $i -le 20; $i++) {

    
    $randomGroup = Get-Random -InputObject $groups

    
    $obj = [PSCustomObject]@{
        RollNumber = $i
        Group      = $randomGroup
    }

    $result += $obj
}


$result | Format-Table -AutoSize

$counter = 1

while ($counter -le 5) {
    Write-Host "Current value: $counter" -ForegroundColor Cyan
    $counter++
    }