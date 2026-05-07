#!/bin/bash

if [ $# -lt 2 ]; then
    exit 1
fi

writefile=$1
writestring=$2

if ! mkdir -p "$(dirname "$writefile")"; then
    echo "Error: could not create directory" >&2
    exit 1
fi

if ! echo "$writestring" > "$writefile"; then
    echo "Error: could not write to file" >&2
    exit 1
fi
