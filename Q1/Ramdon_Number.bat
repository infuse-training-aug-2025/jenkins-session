@echo off

set /a number=%RANDOM% %% 60 + 1
echo The random number is: %number%

if %number% LSS 30 (
    echo Result: FAIL (number is less than 30)
    exit /flag 1
)

echo Result: PASS (number is 30 or more)
exit /flag 0