@echo off
set /a randomNumber=%RANDOM% %% 60 + 1
echo Number Generated: %randomNumber%

if %randomNumber% LSS 30 (
    echo FAIL.
) else (
    echo PASS.
)