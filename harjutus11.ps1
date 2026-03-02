# --------------------------------------------------
# Practice 11 – Calculator with Menu
# --------------------------------------------------

# Ask for numbers (decimal type)
[decimal]$num1 = Read-Host "Enter first number"
[decimal]$num2 = Read-Host "Enter second number"

Write-Host "Choose operation:" -ForegroundColor Green
Write-Host "1: Add" -ForegroundColor Yellow
Write-Host "2: Subtract" -ForegroundColor Yellow
Write-Host "3: Multiply" -ForegroundColor Yellow
Write-Host "4: Divide" -ForegroundColor Yellow

$choice = Read-Host "Enter your choice"

switch ($choice)
{
    1 {
        $result = $num1 + $num2
        Write-Host "Result: $result" -ForegroundColor Cyan
    }

    2 {
        $result = $num1 - $num2
        Write-Host "Result: $result" -ForegroundColor Cyan
    }

    3 {
        $result = $num1 * $num2
        Write-Host "Result: $result" -ForegroundColor Cyan
    }

    4 {
        if ($num2 -eq 0) {
            Write-Host "Cannot divide by zero!" -ForegroundColor Red
        }
        else {
            $result = $num1 / $num2
            Write-Host "Result: $result" -ForegroundColor Cyan
        }
    }

    Default {
        Write-Host "Invalid choice" -ForegroundColor Red
    }
}