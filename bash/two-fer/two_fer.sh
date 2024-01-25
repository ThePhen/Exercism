#!/usr/bin/env bash

name="$1"
if [[ -z "$1" ]]; then
    name="you"
fi
echo "One for $name, one for me."