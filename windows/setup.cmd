REM dotfile @ ~/setup.cmd
@echo off
 
setlocal
 
REM The script to run each time cmd starts.
set initScript=%USERPROFILE%\init.cmd
 
if not exist "%initScript%" (
    echo "%initScript%" does not exist!
    exit /B 1
)
 
REM Configure the current user's autorun
echo reg add "HKCU\Software\Microsoft\Command Processor" /v "Autorun" /d "\"%initScript%\"" /t REG_EXPAND_SZ /f
call reg add "HKCU\Software\Microsoft\Command Processor" /v "Autorun" /d "\"%initScript%\"" /t REG_EXPAND_SZ /f
 
echo Autorun configured!
 
REM init now to avoid the need to restart the console
echo Running "%initScript%" now
"%initScript%"
 
endlocal
