#!/usr/bin/env bash

echo "Enter username: "
read username
count=$(grep -c "$username" /etc/passwd)  # -c option counts the number of occurances of the username
if [ $count -gt 0 ]; then
    home=$(grep "$username" /etc/passwd | cut -d':' -f6)
    echo "Home directory of $username : $home"
else
    echo "User not found"
fi
