# 5. Hashtable

# Practice 2 - Hashtable

# Hashtable 1 - Days Worked
$workDays = @{
    John = 12
    Joe  = 20
    Mary = 18
}

# Hashtable 2 - Salary Per Day
$salaryPerDay = @{
    John = 100
    Joe  = 120
    Mary = 150
}

# Hashtable 3 - Total Salary (calculated)
$totalSalary = @{
    John = $workDays.John * $salaryPerDay.John
    Joe  = $workDays.Joe  * $salaryPerDay.Joe
    Mary = $workDays.Mary * $salaryPerDay.Mary
}

Write-Host "Hashtable 1 - Days Worked" -ForegroundColor Cyan
$workDays

Write-Host "`nHashtable 2 - Salary Per Day" -ForegroundColor Cyan
$salaryPerDay

Write-Host "`nHashtable 3 - Total Salary" -ForegroundColor Green
$totalSalary

