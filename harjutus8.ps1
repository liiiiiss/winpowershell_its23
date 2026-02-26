
# Practice 8 – Monitor Notepad using Do-While loop


Write-Host "Open 3 Notepad windows now..." -ForegroundColor Yellow
Start-Sleep -Seconds 5

Do {

    $notepads = Get-Process -Name notepad -ErrorAction SilentlyContinue

    if ($notepads.Count -gt 0) {
        Write-Host "Notepad is running... ($($notepads.Count) open)" -ForegroundColor Green
        Start-Sleep -Seconds 2
    }

} while ((Get-Process -Name notepad -ErrorAction SilentlyContinue).Count -gt 0)

Write-Host "All Notepad windows are closed. Loop ended." -ForegroundColor Red