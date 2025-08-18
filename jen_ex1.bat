@echo off
setlocal enabledelayedexpansion

:: Generate a random number between 1 and 60
set /a rand=%random% %% 60 + 1
echo Generated number: !rand!

:: Check if the number is less than 30
if !rand! LSS 30 (
    echo Number is less than 30. Failing script...
    exit /b 1
) else (
    echo Number is 30 or more. Passing script...
    exit /b 0
)

