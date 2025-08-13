@echo off
set /a rand=(%RANDOM% %% 60) + 1
echo Random number: %rand%
exit /b 0
