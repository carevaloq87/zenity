#!/bin/bash
# Pop-up box with entry option saved in variable
# zenity --entry --title=""
NAME=$(zenity --entry --title="Please enter your name")
if [ -n "$NAME" ]
then
    zenity --info --text="Hello $NAME" --no-wrap
fi
