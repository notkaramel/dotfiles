#!/bin/bash

CONFIG=$HOME/.config
echo "instruction: ./add-dotfiles.sh <config_folder_name>"
config=$1

cp -r $CONFIG/$config ./.config/
echo "Copied $CONFIG/$config to .config folder"

echo $config >> listofconfigs.md
