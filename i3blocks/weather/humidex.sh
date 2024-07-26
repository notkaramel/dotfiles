#!/bin/bash

TEMP_C=$(inxi -wx --weather-unit m | grep -o "temperature.*" | awk '{ print $2 }')
RH=$(inxi -wx --weather-unit m | grep humidity | awk '{ print $8}'| tr -d '%')

TDEW=$(awk "BEGIN {
    print $TEMP_C - ((100 - $RH)/5)
}")
HUMIDEX=$(awk "BEGIN {

    print $TEMP_C * $RH
}")
echo "$TEMP_C C $RH % $TDEW $HUMIDEX"
