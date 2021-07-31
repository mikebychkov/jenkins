#!/bin/bash
NAME=$1
SECONDNAME=$2
LASTNAME=$3
SHOW=$4
echo "Hello, $NAME $SECONDNAME $LASTNAME, $(if [[ $SHOW == true ]]; then echo $(date); fi)"

