#!/bin/bash

current=$(brightnessctl g)
max=$(brightnessctl m)
percentage=$(printf "%3s" $((100 * current / max)))

if [[ $percentage -eq 100 ]]
then
	ICON="🎑"
elif (( $percentage >= 75 ))
then
	ICON="🌕"
elif (( $percentage >= 50 )) 
then
	ICON="🌖"
elif (( $percentage >= 25 ))
then
	ICON="🌗"
elif (( $percentage >= 10 )) 
then
	ICON="🌘"
elif (( $percentage >= 0 ))
then
	ICON="🌑"
else
	ICON="🌚"
fi

echo "$ICON $percentage% "
