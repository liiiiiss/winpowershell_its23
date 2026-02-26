
# Practice 10 – Do Until loop


Write-Host "Open 3 Notepad windows now..." -ForegroundColor Yellow
Start-Sleep -Seconds 5

$counter = 0

Do {
    $notepads = Get-Process -Name notepad -ErrorAction SilentlyContinue

    if ($notepads.Count -gt 0) {
        Write-Host "Notepad is running" -ForegroundColor Green
        $counter++
        Start-Sleep -Seconds 1
    }

} Until ((Get-Process -Name notepad -ErrorAction SilentlyContinue).Count -eq 0)

Write-Host "All Notepad windows are closed." -ForegroundColor Red
Write-Host "The message was displayed $counter times." -ForegroundColor Cyan