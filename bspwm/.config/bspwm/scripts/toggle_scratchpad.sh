#!/bin/sh

id=$(xdo id -n scratchpad);

if [ -z "$id" ]; then
  kitty --name=scratchpad --override=window_margin_width=10
else
  hidden=$(bspc query -N -n .hidden)
  if [ "${hidden}" ] && [ "$hidden" = "$id" ]; then
    bspc node "$id" -g hidden=off
    bspc node -f "$id"
  else
    bspc node "$id" -g hidden=on
  fi
fi
