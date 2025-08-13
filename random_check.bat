@echo off
setlocal EnableDelayedExpansion


set /a num=%RANDOM% %% 60 + 1

echo Generated Number: %num%


if %num% LSS 30 (
    echo FAIL: Number is less than 30
    exit /b 1
) else (
    echo PASS: Number is 30 or greater
    exit /b 0
)