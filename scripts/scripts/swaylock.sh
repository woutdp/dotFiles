#!/bin/bash

background='#33332FFF'
default='#EBDBB2FF'
red='#CC241DFF'
blue='#83A598FF'
green='#B8BB26FF'
dark='#22201FFF'

swaylock \
    --screenshots \
    --clock \
    --timestr="%H:%M:%S"  \
    --datestr="%a,%e %B" \
    --indicator \
    --indicator-radius 140 \
    --indicator-thickness 16 \
    --effect-pixelate 22 \
    --effect-vignette 0.7:1 \
    --font 'Sarasa Term K' \
    --text-color $default \
    --text-caps-lock-color $red \
    --inside-color $dark \
    --line-color $dark \
    \
    --ring-color $dark \
    --key-hl-color $green \
    \
    --ring-clear-color $blue \
    --inside-clear-color $background \
    --text-clear-color $blue \
    \
    --ring-wrong-color $red \
    --inside-wrong-color $background \
    --text-wrong-color $red \
    \
    --ring-ver-color $green \
    --inside-ver-color $background \
    --text-ver-color $green \
    \
    --grace-no-mouse \
    --grace-no-touch \
    --ignore-empty-password \
    --fade-in 0.2 \
    --grace 2 \
