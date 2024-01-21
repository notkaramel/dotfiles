#!/bin/bash

CONFIG=$HOME/.config
echo "instruction: ./update.sh <config_folder_name>"
config=$1

cp -r $CONFIG/$config/* ./.config/$config/
echo "Copied $CONFIG/$config to .config folder"

