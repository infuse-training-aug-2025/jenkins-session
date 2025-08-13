@echo off
set /a rand=(%RANDOM% %% 60) + 1
echo Random number: %rand%
echo %rand% > number.txt
exit /b 0
