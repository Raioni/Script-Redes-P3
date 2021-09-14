#!/bin/bash

read -p "Digite uma senha: " pwd
echo ''
if [ $(echo $pwd | grep -E ".{8,}") ] && [ $(echo $pwd | grep -E "[A-Z]") ] && [ $(echo $pwd | grep -E "[0-9]") ];
then
  echo "YEEEAH SUA SENHA É IRADA"
else
  echo "NAAH SENHA MICHURUCA, ESTOU DESAPONTADO COM VOCÊ"
fi