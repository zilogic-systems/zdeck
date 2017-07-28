#!/bin/bash

if [ -e ~/.zdeck ]; then
    source ~/.zdeck
fi

ZDECK_HOME=${ZDECK_HOME:-/usr/share/zdeck}

if [ -z $1 ]; then
    echo "Usage: zdeck-init <presentation-format>"
    echo
    echo "Supported Formats:" $(ls $ZDECK_HOME/tmpl/)
    exit 1
fi

if [ -e $ZDECK_HOME/tmpl/$1 ]; then
    cp -a $ZDECK_HOME/tmpl/$1/* .
else
    echo "zdeck-init: incorrect presentation format" 2>&1
    exit 1
fi
