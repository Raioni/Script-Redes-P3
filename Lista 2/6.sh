#!/bin/bash

ls $1 &>/dev/null
if [ $? != 0 ] || (( $(wc -l < $1) > 5 ))
then
  echo "BAD"
else
  head -n 1 $1
fi
