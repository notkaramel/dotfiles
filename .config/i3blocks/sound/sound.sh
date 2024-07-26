#!/bin/sh

VOLUME_MUTE="🔇"
VOLUME_LOW="🔈"
VOLUME_MID="🔉"
VOLUME_HIGH="🔊"
MICROPHONE="🎤"
SOUND_LEVEL=$(wpctl get-volume @DEFAULT_SINK@ | awk '{printf("%3s\n", $2 * 100)}')
MUTED=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $3 == "[MUTED]"}')

MIC=$(wpctl get-volume @DEFAULT_SOURCE@ | awk '{printf("%3s\n", $2 * 100)}')

SINK=$(wpctl inspect @DEFAULT_SINK@ | grep node.description | awk '{print $4}' | tr -d '"') 
SOURCE=$(wpctl inspect @DEFAULT_SOURCE@ | grep node.description | awk '{print $4}' | tr -d '"') 

ICON=$VOLUME_MUTE
if [ "$MUTED" = "1" ]
then
    ICON="$VOLUME_MUTE"
else
    if [ $SOUND_LEVEL -lt 34 ]
    then
        ICON="$VOLUME_LOW"
    elif [ $SOUND_LEVEL -lt 67 ]
    then
        ICON="$VOLUME_MID"
    else
        ICON="$VOLUME_HIGH"
    fi
fi

echo "$ICON $SOUND_LEVEL% $MICROPHONE $MIC% 🎧 $SINK 🎙️ $SOURCE"

