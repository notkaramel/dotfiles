#!/bin/bash

CMD=$(xset -q | grep Caps)
# echo $CMD
CAPS=$(echo $CMD | awk '{print $4}')
NUMS=$(echo $CMD | awk '{print $8}')

if [ $CAPS = "on" ]
then
    CAPS_ICON="⏏️"
else
    CAPS_ICON="⬆️"
fi

if [ $NUMS = "on" ]
then 
    NUMS_ICON="♾️"
else
    NUMS_ICON="🔢"
fi

echo "$CAPS_ICON""$NUMS_ICON"

