@echo off
setlocal ENABLEDELAYEDEXPANSION

:: Generate random number between 1 and 60
set /a randNum=(%RANDOM% * 60 / 32768) + 1
echo Generated number: %randNum%

:: Check if number is less than 30
if %randNum% LSS 30 (
    echo Number is less than 30. Failing the script.
    exit /b 1
) else (
    echo Number is 30 or more. Passing the script.
    exit /b 0
)