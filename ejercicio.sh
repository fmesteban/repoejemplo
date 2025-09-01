#!/usr/bin/bash

count=0

while read -r line; do
    for word in $line; do
        count=$((count + 1))
    done
done < "${1:-/dev/stdin}"

echo $count
