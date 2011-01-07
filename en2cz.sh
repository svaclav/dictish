#!/bin/bash
#set -x

DICT_BIN=/usr/bin/dict

CZ_WORD="$1: $(${DICT_BIN} -deng-cze $1 | egrep -A 2 $1 | tr -d '\n' | sed "s/[^^]$1//g")"

echo -e ${CZ_WORD} | tee -a words.txt
