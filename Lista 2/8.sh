#!/bin/bash

for (( i=$1; i<=$2;i++ ))
do
  if [ $(echo "$i%2"|bc) -ne 0 ]; then
    echo $i
  fi
done