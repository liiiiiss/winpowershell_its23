# Küsi kasutajalt eesnimi ja perenimi
$firstName = Read-Host "Sisesta kustutatava kasutaja eesnimi"
$lastName  = Read-Host "Sisesta kustutatava kasutaja perekonnanimi"

# Loo kasutajanimi kujul eesnimi.perenimi
$username = ("{0}.{1}" -f $firstName, $lastName).ToLower()

Write-Host "Kustutatakse kasutaja: $username"

# Kontrolli, kas kasutaja üldse eksisteerib
$user = Get-LocalUser -Name $username -ErrorAction SilentlyContinue

if ($null -eq $user) {
    Write-Host "Kasutajat '$username' ei eksisteeri. Midagi ei kustutatud."
    return
}

try {
    # Peida PowerShelli veateated
    $ErrorActionPreference = "SilentlyContinue"

    # Proovi kasutaja kustutada
    Remove-LocalUser -Name $username -ErrorAction Stop

    Write-Host "Kasutaja '$username' kustutamine õnnestus."
}
catch {
    Write-Host "Kasutaja '$username' kustutamine ebaõnnestus. Võimalik, et tekkis muu probleem."
}
finally {
    # Taasta veateadete kuvamine
    $ErrorActionPreference = "Continue"
}
