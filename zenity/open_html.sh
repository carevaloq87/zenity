#!/bin/bash
# File selection filtering by extension
# zenity --file-selection --title="Select a file" --file-filter="*.extension"

FILE=$(zenity --file-selection --title="Select a html file" --file-filter="*.html")
if [ -z  "$FILE" ]
then
    exit 1
fi

if zenity --question --title="HTML viewer" --text="Would you like to open this file with Browser?"
then
    xdg-open "file://${FILE}"
else
    zenity --text-info --filename="$FILE" --html --title="HTML viewer"
fi