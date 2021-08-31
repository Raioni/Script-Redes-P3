#!/bin/bash

if [ -z "${*}" ]; then
  echo -e "erro: nenhum nome de arquivo foi passado como parâmetro de linha de comando"
  exit
fi

for i in ${*}
do
  ls $i &>/dev/null && echo "$i SIM" || echo "$i NAO"
done