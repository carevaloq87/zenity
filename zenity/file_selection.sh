#!/bin/bash
# Promts a pop up box where you can enter text
# The text entered is stored in the  $NAME variable
# zenity --entry --title=""
NAME=$(zenity --entry --title="Please enter your name")
if [ -n "$NAME" ]
then
    zenity --info --text="Hello $NAME" --no-wrap
fi
