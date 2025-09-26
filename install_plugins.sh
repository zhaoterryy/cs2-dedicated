#!/bin/bash

cd $HOME

CSGO_DIRECTORY=/home/steam/cs2-dedicated/game/csgo
METAMOD_URL=https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1366-linux.tar.gz
CSSHARP_URL=https://github.com/roflmuffin/CounterStrikeSharp/releases/download/v1.0.340/counterstrikesharp-with-runtime-linux-1.0.340.zip
MATCHZY_URL=https://github.com/shobhit-pathak/MatchZy/releases/download/0.8.13/MatchZy-0.8.13.zip

# https://shobhit-pathak.github.io/MatchZy/installation/
# download metamod & extract to ./metamod
wget -O mmsource.tar.gz $METAMOD_URL
mkdir metamod
tar -xvzf mmsource.tar.gz -C metamod

# Move the addons folder to your game/csgo folder
mkdir $CSGO_DIRECTORY/addons
cp -frl metamod/addons/* $CSGO_DIRECTORY/addons

if ! grep -q csgo/addons/metamod "$CSGO_DIRECTORY/gameinfo.gi"; then
  # Edit gameinfo.gi in game/csgo and add Game csgo/addons/metamod to the SearchPaths section
  sed -i -E 's/(\s*)(Game\scsgo\s*$)/\1Game\tcsgo\/addons\/metamod\n\1\2/' $CSGO_DIRECTORY/gameinfo.gi
fi

# download CSSharp & extract to ./cssharp
wget -O cssharp.zip $CSSHARP_URL
mkdir cssharp
unzip -d cssharp cssharp.zip

cp -frl cssharp/addons/* $CSGO_DIRECTORY/addons

# download MatchZy & extract to ./matchzy
wget -O matchzy.zip $MATCHZY_URL
mkdir matchzy
unzip -d matchzy matchzy.zip

# Simply extract its contents in csgo/ directory of the server
cp -frl matchzy/* $CSGO_DIRECTORY

rm -rf metamod mmsource.tar.gz cssharp cssharp.zip matchzy matchzy.zip

