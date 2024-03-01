#!/bin/bash

FILE=$1

if [ "${FILE}" == "" ]; then
    echo "usage: $0 file"
    exit 1
fi

eye --nope --quiet --pass-only-new compiler.n3 $FILE