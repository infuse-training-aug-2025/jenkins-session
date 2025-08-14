@echo off
set /a num=%random%%%60+1
echo Generated number: %num%
if %num% lss 30 (
    echo Script failed with number %num%
    exit /b 1
) else (
    echo Script succeeded with number %num%
    exit /b 0
)
