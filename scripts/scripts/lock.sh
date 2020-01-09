#!/bin/bash

img="$HOME/.cache/i3lock.png"

rm $img
scrot $img

convert $img -scale 5% -scale 2000% $img
convert $img $icon -gravity center -composite $img

background='#33332FFF'
default='#EBDBB2FF'
red='#CC241DFF'
blue='#83A598FF'
dark='#22201FFF'

i3lock -i $img \
  --line-uses-inside \
  --insidevercolor=$background   \
  --ringvercolor=$dark     \
  \
  --insidewrongcolor=$background \
  --ringwrongcolor=$red   \
  \
  --insidecolor=$background      \
  --ringcolor=$dark        \
  \
  --verifcolor=$default        \
  --wrongcolor=$default        \
  --timecolor=$default        \
  --datecolor=$default        \
  --layoutcolor=$default      \
  --keyhlcolor=$blue       \
  --bshlcolor=$blue        \
  \
  --clock               \
  --indicator           \
  --timesize=40 \
  --timestr="%H:%M:%S"  \
  --datestr="%A, the%e of %B" \
  --veriftext="Verifying..." \
  --wrongtext="Wrong" \
  --date-font=hack \
  --time-font=hack \
  --verif-font=hack \
  --wrong-font=hack \
  \
  --radius 140 \
  --ring-width 12 \
