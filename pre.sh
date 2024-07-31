#!/bin/bash

cd $HOME

CSGO_DIRECTORY=/home/steam/cs2-dedicated/game/csgo

./install_plugins.sh

cp -f admins.json $CSGO_DIRECTORY/addons/counterstrikesharp/configs/admins.json
cp -f matchzy_config.cfg $CSGO_DIRECTORY/cfg/MatchZy/config.cfg

