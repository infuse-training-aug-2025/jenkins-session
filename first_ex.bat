@echo off
set /a num=(%RANDOM% %% 60) + 1
echo Random number: %num%

if %num% LSS 30 (
    echo Failed: Number is less than 30
    exit /b 1    
)else (
    echo Passed: Number is 30 or more
    exit /b 0   
)
