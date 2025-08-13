@echo off
set /a randomNumber=%RANDOM% %% 60 + 1
echo Generated Random Number: %randomNumber%

if %randomNumber% LSS 30 (
    echo The number is less than 30. Failing the script.
    exit /b 1
) else (
    echo The number is 30 or greater. Passing the script.
    exit /b 0
)