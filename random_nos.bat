@echo off

set /a num=%random% %% 60 + 1

echo Generated number: %num%

if %num% lss 30 (
    echo Number is less than 30 - FAIL
    exit /b 1
) else (
    echo Number is 30 or greater - PASS
    exit /b 0
)