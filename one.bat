@echo off 
set /a n=%RANDOM% %%60+1
echo %n%
IF %n% lss 30 (
    exit /B 1
) ELSE (
    exit /B 0
)