#!/bin/bash

function powermenu {
    options="Cancel\nShutdown\nRestart"
    selected=$(echo -e $options | dmenu)
    if [[ $selected = "Shutdown" ]]; then
        sudo shutdown -P now
    elif [[ $selected = "Restart" ]]; then
        sudo shutdown -r now
    elif [[ $selected = "Cancel" ]]; then
        return
    fi


}

powermenu
