#!/bin/bash

total=$(wc -l < $1)

for (( i=1; i<=$total;i++ ))
do
  linha=$(sed -n ${i}p $1)
  if [ $(echo $linha | grep -E ".{1,}@.{1,}\..{1,}") ]
  then
    echo "OK: $linha"
  else
    echo "FAIL: $linha"
  fi
done
