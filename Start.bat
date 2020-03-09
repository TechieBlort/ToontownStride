@echo off
title Toontown Stride CLI Launcher

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PYTHON_PATH=<PYTHON_PATH

echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to do!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo.
echo #1 - Run Toontown Stride
echo. 
:selection

set INPUT=-1
set /P INPUT=Selection:


if %INPUT%==1 (
    goto run
) else (
	goto selection
)


:run
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What do you want to launch!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo. 
echo #1 - Locally Host a Server
echo #2 - Connect to an Existing Server
echo.

set INPUT=-1
set /P INPUT=Selection:
if %INPUT%==1 (
    goto localhost
) else if %INPUT%==2 (
    goto connect
) else (
	goto run
)


:localhost
cls 
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Starting Localhost!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
cd tools
echo Launching the AI Server...
START autostart-ai-server.bat
echo Launching Astron...
START autostart-astron-cluster.bat
echo Launching the Uberdog Server...
START autostart-uberdog-server.bat
cd ..
SET TTS_GAMESERVER=127.0.0.1
goto game

:connect
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What Server are you connecting to!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
set /P TTS_GAMESERVER="Server IP: "

:game
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Username [!] This does get stored in your source code so beware!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
set /P TTS_PLAYCOOKIE="Username: "
echo.
cls
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Welcome to Toontown Stride, %ttsUsername%!
echo The Tooniverse Awaits You!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
title Toontown Stride Client
%PYTHON_PATH% -m toontown.toonbase.ToontownStart
PAUSE
