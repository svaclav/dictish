#!/bin/bash
#set -x

function randmulti() {
  a=$(($RANDOM%100))
  b=$(($RANDOM%100))
  result="$a*$b"
  echo $a $b
  echo $result | bc
  echo "---------"
}

while true; do
  randmulti
  sleep 5
done
