#!/bin/bash

FILE=$(zenity --file-selection --title="Select an Script file" --file-filter="*.sh")
if [ -z  "$FILE" ]
then
    exit 1
fi

if zenity --question --title="Script Executer" --text="Would you like to run this Script?"
then
    sudo bash "${FILE}"
else
    exit 1
fi