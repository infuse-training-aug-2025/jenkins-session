@echo off
setlocal EnableDelayedExpansion

:: Generate a number between 1 and 60
set /a randNum=(%random% %% 60) + 1
echo !randNum!
