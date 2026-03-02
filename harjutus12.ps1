# --------------------------------------------------
# Practice 12 – Function WITHOUT parameter
# --------------------------------------------------

function Get-ServiceCount
{
    $running = (Get-Service | Where-Object { $_.Status -eq "Running" }).Count
    $stopped = (Get-Service | Where-Object { $_.Status -eq "Stopped" }).Count

    Write-Host "Running services count: $running" -ForegroundColor Green
    Write-Host "Stopped services count: $stopped" -ForegroundColor Red
}

# Call function
Get-ServiceCount