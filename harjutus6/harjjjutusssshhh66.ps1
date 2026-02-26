
# Practice 6 - Loops 



$students = Import-Csv "C:\Temp\students.csv"


$result = @()


foreach ($s in $students) {

    $schoolType = ""

    if ($s.Age -ge 4 -and $s.Age -le 10) {
        $schoolType = "Junior"
    }
    elseif ($s.Age -ge 11 -and $s.Age -le 17) {
        $schoolType = "Senior"
    }

    $obj = [PSCustomObject]@{
        Name   = $s.Name
        School = $schoolType
    }

    $result += $obj
}


$result | Format-Table -AutoSize


$result | Export-Csv "C:\Temp\SchoolResult.csv" -NoTypeInformation

Write-Host "`nResult exported to C:\Temp\SchoolResult.csv" -ForegroundColor Green