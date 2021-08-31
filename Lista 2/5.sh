#!/bin/bash

read -p "Digite o nome do primeiro arquivo: " a1
read -p "Digite o nome do segundo arquivo: " a2

cat $a1 &>/dev/null
if [ $? != 0 ]; then
  echo "erro: o arquivo $a1 não existe"
  exit
fi

cat $a2 &>/dev/null
if [ $? != 0 ]; then
  echo "erro: o arquivo $a2 não existe"
  exit
fi

a=$(wc -l < $a1)
b=$(wc -l < $a2)

if ((a > b)); then
  echo $a1
else
  echo $a2
fi
