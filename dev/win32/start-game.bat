@echo off
title Toontown Stride Client
cd ../..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PYTHON_PATH=<PYTHON_PATH

rem Get the user input:
set /P ttsUsername="Username: "
set /P serverIP="Server IP: "

rem Export the environment variables:
set TTS_PLAYCOOKIE=%ttsUsername%
set TTS_GAMESERVER=%serverIP%

cls

echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Welcome to Toontown Stride, %ttsUsername%!
echo The Tooniverse Awaits You!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =


%PYTHON_PATH% -m toontown.toonbase.ToontownStart
pause
