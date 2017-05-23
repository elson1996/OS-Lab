#!/usr/bin/env bash
echo "Largest file in directory: "
file=$(find . -type f -exec ls -al {} \; | sort -nr -k5 | sed -n -e 1p | cut -d " " -f 10)
size=$(find . -type f -exec ls -al {} \; | sort -nr -k5 | sed -n -e 1p | cut -d " " -f 5)
echo "Name: $file"
echo "Size: $size"
