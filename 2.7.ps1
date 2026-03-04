
$firstName = Read-Host "Sisesta kasutaja eesnimi (ladina tähtedega)"
$lastName  = Read-Host "Sisesta kasutaja perenimi (ladina tähtedega)"


if ($firstName -notmatch '^[a-zA-Z]+$' -or $lastName -notmatch '^[a-zA-Z]+$') {
    Write-Host "VIGA: Nimi võib sisaldada ainult ladina tähti!" -ForegroundColor Red
    exit
}


$username = ($firstName + "." + $lastName).ToLower()


$fullName = "$firstName $lastName"
$description = "Lokaalne kasutaja $fullName"


$existingUser = Get-LocalUser -Name $username -ErrorAction SilentlyContinue

if ($existingUser) {
    Write-Host "VIGA: Kasutaja '$username' on juba olemas!" -ForegroundColor Red
    exit
}


$password = ConvertTo-SecureString "Parool1!" -AsPlainText -Force


New-LocalUser `
    -Name $username `
    -FullName $fullName `
    -Description $description `
    -Password $password `
    -ErrorAction SilentlyContinue


if ($?) {
    Write-Host "Kasutaja '$username' loodi edukalt!" -ForegroundColor Green
} else {
    Write-Host "Kasutaja loomine ebaõnnestus!" -ForegroundColor Red
}