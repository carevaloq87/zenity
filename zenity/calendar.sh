#!/bin/bash
# Select a calendar date zenity --calendar
I=$(zenity --calendar)
# zenity --info --text="Selected date: $I" --no-wrap
notify-send "File Downloader" "Download completed on: $I"