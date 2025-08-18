@echo off
set /a randomNumber=%RANDOM% %% 60 + 1
echo Generated Random Number: %randomNumber%

if %randomNumber% LSS 30 (
    exit /b 1
) else (
    exit /b 0
)