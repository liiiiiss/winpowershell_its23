Write-Host "I want to learn PowerShell" -ForegroundColor DarkMagenta
#2.Variable
$a = 10
$b = 4 

$Summa = $a + $b

Write-Host "kahe arvu $a ja $b summa on :" ($a + $b) "veel kord: $summa"
Write-Host "kahe arvu $a ja $b lahutamine on :" ($a - $b) -ForegroundColor Cyan
Write-Host "kahe arvu $a ja $b korrutamine on :" ($a * $b) -BackgroundColor DarkGreen

#3.Data Types in PowerShell

$v = 1 + 1
$tyyp = $v.GetType().Name

Write-Host "Muutuja v väärtus on $v ja tema tüüp on $tyyp" -ForegroundColor Green

#4.Arrays

$array1 = @(1, 2, 3)
$array2 = @(4, 5, 6)

Write-Host "Massiiv 1 väärtused: $array1" -ForegroundColor Yellow
Write-Host "Massiiv 2 väärtused: $array2" -ForegroundColor DarkGray

$array3 = @()

$array3 += $array1[0] + $array2[0]
$array3 += $array1[1] + $array2[1]
$array3 += $array1[2] + $array2[2]

Write-Host "Massiiv 3 (summa): $array3" -ForegroundColor DarkRed