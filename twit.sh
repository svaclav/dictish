#!/bin/bash
#set -x

ASCIIDOC_BIN=/usr/bin/asciidoc
WWW_PATH=/var/www

echo -e $1 >> thoughts_tmp.txt

tac thoughts_tmp.txt > thoughts.txt

$ASCIIDOC_BIN thoughts.txt

cp thoughts.html $WWW_PATH/index.html
