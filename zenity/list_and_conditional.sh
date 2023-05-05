#!/bin/bash

FILE=$(zenity  --list --title="Choose Scan" \
        --column="Id"\
        --column="Name" \
        "calendar.sh" "Open Calendar" \
        "0.1_evasiontechs.sh" "Evasion Tech" \
        "0_detecthostsup.sh" "Detect Hosts Up" \
        "0_dnsrecon.sh" "DNS Recon")

if [ -z  "$FILE" ]
then
    exit 1
else
    bash "${FILE}"
fi