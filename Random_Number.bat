@echo off

set /a number=%RANDOM% %% 60 + 1
echo %number%
