#!/bin/bash

WARNING="brightn3ss must under the range from  0 to 100 !";

LIGHT=$(cat ~/.config/i3/.brightness)

LIGHT=$(($LIGHT + $1))
if [ $LIGHT -gt 100 ]; then
    echo -e WARNING
    exit 1;
fi

if [ $LIGHT -lt 0 ]; then
    echo -e WARNING
    exit 1;
fi

brightness_level="$(( $LIGHT / 100)).$(( $LIGHT % 100 ))"
screennames=$(xrandr | grep " connected" | cut -f1 -d" ")
for screen in ${screennames}
do
  xrandr --output $screen --brightness $brightness_level;
done
echo -e "[info]: Screen Brightness level set to" $LIGHT"%"
echo $LIGHT > ~/.config/i3/.brightness
