#!/usr/bin/env bash

echo "Enter password to lock"
stty -echo
read pwd1
echo "Retype password:"
read pwd2
if [[ "$pwd1" == "$pwd2" ]]; then
    #statements
    clear
    echo "Terminal Locked"
    while [[ true ]]; do
        #statements
        echo "Enter Password to unlock terminal: "
        read pwd3
        if [[ "$pwd1" == "$pwd3" ]]; then
            #statements
            clear
            echo "Terminal Unlocked"
            break;
        fi
        echo "wrong password"
    done
else
    echo "Password Mismatch"
fi
stty echo
