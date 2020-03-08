#!/bin/sh

#ServerIP
clear
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo What Server are you connecting to!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
read -p "Server IP (Default: 127.0.0.1): " TTS_GAMESERVER
TTS_GAMESERVER=${TTS_GAMESERVER:-"127.0.0.1"}

#Username
clear
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Username [!] This does get stored in your source code so beware!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
read -p "Username: " ttsUsername


# Export the environment variables:
export ttsUsername=$ttsUsername
export TTS_PLAYCOOKIE=$ttsUsername
export TTS_GAMESERVER=$TTS_GAMESERVER

#Login
clear
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
echo Welcome to Toontown Stride, $ttsUsername!
echo The Tooniverse Awaits You!
echo = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

while [ true ]
do
    /usr/bin/python2 -m toontown.toonbase.ToontownStart
    read -r -p "Press any key to continue..." key
done
