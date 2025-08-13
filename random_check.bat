@echo off
setlocal EnableDelayedExpansion

rem Generate a random number 1..60
set /a num=(%RANDOM% %% 60) + 1

echo Generated number: !num!

if !num! lss 30 (
  echo FAIL > result.txt
  echo Result: FAIL (number ^< 30)
  exit /b 1
) else (
  echo PASS > result.txt
  echo Result: PASS (number ^>= 30)
  exit /b 0
)
