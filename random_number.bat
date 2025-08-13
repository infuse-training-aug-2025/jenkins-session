@echo off
setlocal enabledelayedexpansion
set /a randomNumber=%RANDOM% %% 60 + 1
echo Generated Random Number: %randomNumber%




