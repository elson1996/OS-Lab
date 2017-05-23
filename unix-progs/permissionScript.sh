#!/bin/bash
echo "Checking permission of 2 files"
file1=$1
file2=$2
file1Perm="$(ls -l $file1 | cut -d" " -f 1)"
file2Perm="$(ls -l $file2 | cut -d" " -f 1)"
if [ "$file1Perm" == "$file2Perm" ]; then
    echo "Same Permissions : $file1Perm"
else
    echo "Different Permissions"
    echo "$file1 : $file1Perm"
    echo "$file2 : $file2Perm"
fi
echo "end"
