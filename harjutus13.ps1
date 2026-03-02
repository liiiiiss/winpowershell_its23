# --------------------------------------------------
# Practice 13 – Complete Menu Based Script
# --------------------------------------------------

# -------- FUNCTIONS --------

function Show-MainMenu {
    Clear-Host
    Write-Host "===== MAIN MENU =====" -ForegroundColor Green
    Write-Host "1: Service Menu"
    Write-Host "2: Exit"
}

function Show-ServiceMenu {
    Clear-Host
    Write-Host "===== SERVICE MENU =====" -ForegroundColor Cyan
    Write-Host "1: Show Running Services"
    Write-Host "2: Show Stopped Services"
    Write-Host "3: Back to Main Menu"
}

function Show-PostMenu {
    Write-Host ""
    Write-Host "1: Back to Main Menu"
    Write-Host "2: Exit"
}

# -------- MAIN LOOP --------

Do {

    Show-MainMenu
    $mainChoice = Read-Host "Select an option"

    switch ($mainChoice) {

        1 {
            Do {
                Show-ServiceMenu
                $serviceChoice = Read-Host "Select an option"

                switch ($serviceChoice) {

                    1 {
                        Clear-Host
                        Get-Service | Where-Object { $_.Status -eq "Running" } |
                        Select-Object Name, Status | Format-Table -AutoSize
                    }

                    2 {
                        Clear-Host
                        Get-Service | Where-Object { $_.Status -eq "Stopped" } |
                        Select-Object Name, Status | Format-Table -AutoSize
                    }

                    3 {
                        break
                    }

                    default {
                        Write-Host "Invalid option. Try again." -ForegroundColor Red
                        Start-Sleep 2
                    }
                }

                if ($serviceChoice -eq 1 -or $serviceChoice -eq 2) {

                    Show-PostMenu
                    $postChoice = Read-Host "Select an option"

                    switch ($postChoice) {

                        1 { break }

                        2 { exit }

                        default {
                            Write-Host "Invalid option. Returning to Main Menu." -ForegroundColor Red
                            Start-Sleep 2
                            break
                        }
                    }
                }

            } while ($true)
        }

        2 {
            exit
        }

        default {
            Write-Host "Invalid option. Try again." -ForegroundColor Red
            Start-Sleep 2
        }
    }

} while ($true)