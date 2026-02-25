#10. If/Then

# --------------------------------------------------
# Part 1 – Compare two numbers
# --------------------------------------------------

$num1 = Read-Host "Enter first number"
$num2 = Read-Host "Enter second number"

$num1 = [int]$num1
$num2 = [int]$num2

if ($num1 -gt $num2) {
    Write-Host "The higher number is: $num1" -ForegroundColor Green
}
elseif ($num2 -gt $num1) {
    Write-Host "The higher number is: $num2" -ForegroundColor Green
}
else {
    Write-Host "Both numbers are equal." -ForegroundColor Yellow
}


# --------------------------------------------------
# Part 2 – Country Menu
# --------------------------------------------------

Write-Host "`nSelect a country:" -ForegroundColor Cyan
Write-Host "1 - Estonia"
Write-Host "2 - Finland"
Write-Host "3 - Germany"

$choice = Read-Host "Enter your choice (1-3)"

if ($choice -eq "1") {
    Write-Host "Capital of Estonia is Tallinn" -ForegroundColor Green
}
elseif ($choice -eq "2") {
    Write-Host "Capital of Finland is Helsinki" -ForegroundColor Green
}
elseif ($choice -eq "3") {
    Write-Host "Capital of Germany is Berlin" -ForegroundColor Green
}
else {
    Write-Host "Invalid selection." -ForegroundColor Red
}
