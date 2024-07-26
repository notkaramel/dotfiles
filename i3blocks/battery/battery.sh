#!/bin/bash

ACPI_RES=$(acpi -b)
ACPI_CODE=$?
if [ $ACPI_CODE -eq 0 ]
then
    # Get essential information. Due to som bug with some versions of acpi it is
    # worth filtering the ACPI result from all lines containing "unavailable".
    BAT_LEVEL_ALL=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9][0-9]?[0-9]?%")
    BAT_LEVEL=$(echo "$BAT_LEVEL_ALL" | awk -F"%" 'BEGIN{tot=0;i=0} {i++; tot+=$1} END{printf("%d%\n", tot/i)}')
    TIME_LEFT=$(echo "$ACPI_RES" | grep -v "unavailable" | grep -E -o "[0-9]{2}:[0-9]{2}:[0-9]{2}")
    IS_CHARGING=$(echo "$ACPI_RES" | grep -v "unavailable" | awk '{ printf("%s\n", substr($3, 0, length($3)-1) ) }')

    # If there is no 'time left' information (when almost fully charged) we 
    # provide information ourselvs.
    if [ -z "$TIME_LEFT" ]
    then
        TIME_LEFT="00:00:00"
    fi

    # Print full text. The charging data.
    TIME_LEFT=$(echo $TIME_LEFT | awk '{ printf("%s\n", substr($1, 0, 5)) }')
    #echo "🔋$BAT_LEVEL ⏳$TIME_LEFT "

    # Print the short text.
    #echo "BAT: $BAT_LEVEL"
    
    # Change the font color, depending on the situation.
    if [ "$IS_CHARGING" = "Charging" ]
    then
        echo "$BAT_LEVEL ⚡"
        echo ""
        echo "#eac553"
    else
        if [ "${BAT_LEVEL%?}" -le 32 ]
        then
            echo "🪫 $BAT_LEVEL ⌛$TIME_LEFT"
            echo
            echo "#f0465c"
        elif [ "${BAT_LEVEL%?}" -le 64 ]
        then
            echo "🔋 $BAT_LEVEL ⏳ $TIME_LEFT"
            echo
            echo "#f09e6e"
        else
            echo "🔋 $BAT_LEVEL"
            echo
            echo "#bbff66"
        fi
    fi
fi
