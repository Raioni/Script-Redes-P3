#!/bin/bash

cat $1 &>/dev/null
if [ $? != 0 ]; then
  echo "Meu deeeeus, o arquivo $1 não existe, que tragédia ;o;)"
  exit
fi

a=$(cat $1 | wc -l)
x=$2

if (($a < $x)); then
  echo "Falha: o arquivo $1 possui apenas $a linhas"
else
  sed -ne $2p $1
fi