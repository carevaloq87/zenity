#!/bin/bash
# Pop-up list with ID and options
# zenity --list --title="List of box" --column="Id" --column="Name" id_option_1 "Option 1" id_option_2 "option 2" id_option_3 "Option 3"
zenity --list --title="Choose an auth plugin" --column="Id" --column="Name" googleauth "Google authenticator" \
msauth "Microsoft authenticator" \
authy "Authy authenticator"