@echo off
title Toontown Stride Client
cd ../..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PYTHON_PATH=<PYTHON_PATH

rem Get the user input:
set /P ttsUsername="Username: "
rem Export the environment variables:
set TTS_PLAYCOOKIE=%ttsUsername%
set TTS_GAMESERVER=127.0.0.1

cls

echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Welcome to Toontown Stride, %ttsUsername%!
echo The Tooniverse Awaits You!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =


%PYTHON_PATH% -m toontown.toonbase.ToontownStart
pause
