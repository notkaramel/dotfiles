#!/bin/bash

CONFIG=$HOME/.config
echo "instruction: ./add-dotfiles.sh <config_folder_name>"
config=$1

mkdir .config/$config
cp -r $CONFIG/$config/* ./.config/$config/
echo "Copied $CONFIG/$config to .config folder"

echo $config >> listofconfigs.md
