#!/bin/bash

DICT_BIN=/usr/bin/dict

CZ_WORD=$(${DICT_BIN} -deng-cze $1 | egrep -A 2 $1 | tr -d '\n')

echo -e ${CZ_WORD}
