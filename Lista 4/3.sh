#!/bin/bash

function r() {
  read -p "Digite o nome do arquivo a ser processado: " arquivo
  echo ""
  cat $arquivo &>/dev/null
  if [ $? != 0 ]; then
    echo "O arquivo digitado não existe, tente novamente."
    echo ""
  fi
}

function a() {
  if [ -z $arquivo ]; then
    echo "Você esqueceu de digitar o arquivo que deseja processar, por favor primeiro escolha a opção r ."
    echo ""
  else
    cat $arquivo &>/dev/null
    if [ $? != 0 ]; then
      echo "O arquivo digitado não existe, tente novamente."
      echo ""
    else
      cat $arquivo | sed -E 's/[a-zA-Z]//g'
      echo ""
    fi
  fi
}

function b() {
  if [ -z $arquivo ]; then
    echo "Você esqueceu de digitar o arquivo que deseja processar, por favor primeiro escolha a opção r ."
    echo ""
  else
    cat $arquivo &>/dev/null
    if [ $? != 0 ]; then
      echo "O arquivo digitado não existe, tente novamente."
      echo ""
    else
      cat $arquivo | sed -E 's/[0-9]//g'
      echo ""
    fi
  fi
}

function c() {
  if [ -z $arquivo ]; then
    echo "Você esqueceu de digitar o arquivo que deseja processar, por favor primeiro escolha a opção r ."
  else
    cat $arquivo &>/dev/null
    if [ $? != 0 ]; then
      echo "O arquivo digitado não existe, tente novamente."
      echo ""
    else
      cat $arquivo | sed -E 's/\W|_//g'
      echo ""
    fi
  fi
}

while true;
do
  echo "-----MENU DE OPÇÔES-----"
  echo "r) Digitar o nome de um arquivo que será processado"
  echo "a) Remover todas as letras do arquivo"
  echo "b) Remover todos os dígitos do arquivo."
  echo "c) Substituir todos os caracteres que não são letras nem dígitos do arquivo por ~"
  echo "q) Sair do script"
  echo ""
  read -p "Digite a opção desejada: " opc
  echo ""
  case $opc in
    r) r ;;
    a) a ;;
    b) b ;;
    c) c ;;
    q) exit ;;
    *) echo "Digite uma opção valida"
  esac
done