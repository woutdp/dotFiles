#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
  pulseaudio-ctl full-status | awk '{print $1}'
}

function is_mute {
  pulseaudio-ctl full-status | awk '{print $2}'
}

function unmute {
  if [ $(is_mute) == "yes" ]; then
    pulseaudio-ctl mute
  fi
}

function send_notification {
  volume=`get_volume`
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipedia.org/wiki/Box-drawing_character
  bar=$(seq -s "─" $(($volume / 5)) | sed 's/[0-9]//g')
  # Send the notification
  dunstify -i audio-volume-muted-blocking -r 2593 -u normal "$bar"
}

case $1 in
  up)
    pulseaudio-ctl up
    send_notification
  ;;
  down)
    pulseaudio-ctl down
    send_notification
  ;;
  mute)
    # Toggle mute
    pulseaudio-ctl mute
    if [ $(is_mute) == "yes" ]; then
      dunstify -i audio-volume-muted -r 2593 -u normal "Muted"
    else
      send_notification
    fi
  ;;
esac
