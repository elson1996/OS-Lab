#!/usr/bin/env bash

echo -n "Enter a string : "
read string
len=${#string}
revStr=""
while [[ $len -gt 0 ]]; do
    #statements
    revStr=$revStr$(echo $string | cut -c $len)
    let len-=1
done
echo "Reverse : $revStr"
