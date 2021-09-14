#!/bin/bash

function a() {
  echo -e "\nListando Diretórios:"
  echo ""
  ls -l | grep -E "^d" | awk '{print $NF}'
}

function b() {
  echo -e "\nListando arquivos executáveis:"
  echo ""
  ls -l | grep -E "\-..x..x..x.{1,}" | awk '{print $NF}'
}

function c() {
  echo -e "\nListando links simbólicos:"
  echo ""
  ls -l | grep "^l" | awk '{print $NF}'
}

function d() {
  echo -e "\nListando scripts shell:"
  echo ""
  ls | grep -E ".{1,}\.sh"
}

function e() {
  echo -e "\nListando apenas arquivos com tamanho menor que 200 Bytes:"
  echo ""
  ls -l | grep -E "^-"| awk '{print $5" "$NF}' | grep -E "\b^[0-9]\b|\b^[1-9][0-9]\b|\b1[0-9][0-9]\b"
}

echo "TO SEM CRIATIVIDADE PRA FRASE ESPECIAL DESCULPA PROF"
for i in ${*}
do
  case $i in
    "-a" ) a ;;
    "-b" ) b ;;
    "-c" ) c ;;
    "-d" ) d ;;
    "-e" ) e ;;
    *) exit ;;

  esac
done