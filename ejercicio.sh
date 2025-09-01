#!/usr/bin/bash

count=0

if [[ -n "$1" && ! -f "$1"]]; then
    echo $count
    exit 0
fi

while read -r line || [[ -n "$line" ]]; do
    for word in $line; do
        count=$((count + 1))
    done
done < "${1:-/dev/stdin}"

echo $count
