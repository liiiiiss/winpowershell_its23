# 5. Hashtable

$student = @{
    Name = "Liis"
    Age = 18
    Course = "IT-spetsialist"
    School = "voco"
}

Write-Host "Student Information:" -ForegroundColor Cyan
Write-Host "Name: $($student.Name)" -ForegroundColor Yellow
Write-Host "Age: $($student.Age)" -ForegroundColor Yellow
Write-Host "Course: $($student.Course)" -ForegroundColor Yellow
Write-Host "School: $($student.School)" -ForegroundColor Yellow
