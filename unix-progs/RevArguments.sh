#!/usr/bin/env bash

echo -n "Printing arguments: "
for arg in "$@"
do
    echo -n "$arg,"
done
echo " "
echo -n "Printing arguments in reverse: "
for (( i = "$#"; i > 0; i-- )); do
    #statements
    echo -n "${!i},"    # {!i} puts the value of i in the postional parameter same as eval n=\$$i
done
echo "END"
