@echo off
REM 
REM 

echo Starting random number test...

REM 
set /a randomNum=%RANDOM% %% 60 + 1

echo Generated random number: %randomNum%

REM 
if %randomNum% LSS 30 (
    echo FAILURE: Random number %randomNum% is less than 30
    exit /b 1
) else (
    echo SUCCESS: Random number %randomNum% is greater than or equal to 30
    exit /b 0
)
