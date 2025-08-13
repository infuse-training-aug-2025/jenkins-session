@echo off
set /a num=%random% %% 60 + 1
echo Generated number: %num%

if %num% LSS 30 (
    echo Number is less than 30. Failing the script.
    exit /b 1
) else (
    echo Number is 30 or greater. Passing the script.
    exit /b 0
)

