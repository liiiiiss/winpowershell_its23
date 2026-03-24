# 1. Küsi kasutajalt eesnimi ja perenimi
$firstName = Read-Host "Sisesta kasutaja eesnimi"
$lastName  = Read-Host "Sisesta kasutaja perenimi"

# 2. Loo kasutajanimi kujul eesnimi.perenimi
$username = ("{0}.{1}" -f $firstName, $lastName).ToLower()

Write-Host "Kustutatakse kasutaja: $username"

# 4. Soovi korral saab veateated maha suruda (kommenteeri lahti, kui vaja)
# $ErrorActionPreference = "SilentlyContinue"

# 3. Proovi kasutaja kustutada ja anna tulemusest teada
try {
    Remove-LocalUser -Name $username -ErrorAction Stop
    Write-Host "Kasutaja '$username' on edukalt kustutatud."
}
catch {
    Write-Host "Kasutaja '$username' kustutamine ebaõnnestus."
    Write-Host "Põhjus: $($_.Exception.Message)"
}
