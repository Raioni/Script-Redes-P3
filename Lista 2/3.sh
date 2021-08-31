#!/bin/bash

n1=$1
n2=$2
if ((n1 > n2)); then
  echo "Menor: $n2"
  echo "Maior: $n1"
else
  echo "Menor: $n1"
  echo "Maior: $n2"
fi
