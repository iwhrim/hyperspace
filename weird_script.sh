#!/bin/bash

# This script is called by i3 on startup.

# Increase key speed via a rate change
xset r rate 300 50
# Map the caps lock key to super...
setxkbmap -layout us -variant altgr-intl -option
setxkbmap -layout us -variant altgr-intl -option caps:super
# If you don't want a us international keyboard, rather whatever keyboard
# you set in your installation, comment out the above line and uncomment
# the one below.
#setxkbmap -option caps:super

# But when it is pressed only once, treat it as escape.
killall xcape ; xcape -e 'Super_L=Escape'

# Map the menu button to right super as well.
xmodmap -e 'keycode 135 = Super_R'
#keycode 135 = Super_R NoSymbol Super_R
