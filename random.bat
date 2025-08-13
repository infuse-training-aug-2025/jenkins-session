@ECHO off
set /a num=%random% %%60
echo The num is:%num% 

if %num% LSS 30 ( 
    exit /b 1 
    )
exit /b 0