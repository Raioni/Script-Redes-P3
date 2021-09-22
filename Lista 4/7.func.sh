#!/bin/bash

function a() {
  read -p "Digite o nome do arquivo que vai ser processado: " arq
  cat $arq | tr '[a-z]' ' '
}

function b() {
  read -p "Digite o nome do arquivo que vai ser processado: " arq
  cat $arq | sed -E 's/[0-9]//g'
}

function c() {
  read -p "Digite o nome do arquivo que vai ser processado: " arq
  cat $arq | awk 'gsub (/\W|_/,".")'
}