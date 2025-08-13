@echo off
setlocal enabledelayedexpansion

set /a randNum=(%RANDOM% %% 60) + 1
echo Generated number: !randNum!

if !randNum! lss 30 (
    echo Number is less than 30. Failing script.
    exit /b 1
) else (
    echo Number is 30 or greater. Passing script.
    exit /b 0
)