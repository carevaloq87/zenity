#!/bin/bash
# How to write to a file and how to avoid overwriting it

MESSAGE="This is a message"
echo $MESSAGE > "text.txt"


# Override the “noclobber” option 
set -o noclobber
MESSAGE="This is a message altered with >|"
echo $MESSAGE >| "text.txt"

# Avoid overwriting a file
set -o noclobber
MESSAGE="This is a message altered"
echo $MESSAGE > "text.txt" # error Message
