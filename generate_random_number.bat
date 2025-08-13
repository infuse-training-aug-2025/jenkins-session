@echo off
set /a randomNumber=%RANDOM% %% 60 + 1
echo %randomNumber%
