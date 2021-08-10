#!/bin/bash

read -p 'Digite o nome do 1º diretório: ' d1
read -p 'Digite o nome do 2º diretório: ' d2
read -p 'Digite o nome do 3º diretório: ' d3
read -p 'Digite o nome do 4º diretório: ' d4
read -p 'Digite o nome do 5º diretório: ' d5

echo -e '\nConteúdo do diretório' $d1 :
ls $d1
echo -e '\nConteúdo do diretório' $d2 :
ls $d2
echo -e '\nConteúdo do diretório' $d3 :
ls $d3
echo -e '\nConteúdo do diretório' $d4 :
ls $d4
echo -e '\nConteúdo do diretório' $d5 :
ls $d5
