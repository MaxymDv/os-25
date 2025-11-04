#!/bin/bash

DIR="$1"

PREF="$2"

find "$DIR" -type f -name "$PREF*" -printf '%A@ %p\n' \
| sort -nr -k1,1 \
| cut -d' ' -f2-
