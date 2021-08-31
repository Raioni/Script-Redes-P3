#!/bin/bash

a=$1
b=$2

if [ $(echo "$1>$2"|bc) -gt 0 ]; then
  echo $b
else
  echo $a
fi