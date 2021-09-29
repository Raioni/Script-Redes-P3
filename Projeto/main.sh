#!/bin/bash

source funcs.sh

read -p 'Digite o url do site que deseja visualizar: ' url
wget $url -O /tmp/index.html &>/dev/null
if [ $? != 0 ]; then
  echo " "
  echo "------------------------------------"
  echo "Link não encontrado, por favor tente novamente e verifique se escreveu certo :("
  echo "------------------------------------"
  exit
fi
url2=$(echo $url | sed -E -e 's/https:\/\///g' -e 's/\/.{1,}//g' -e 's/\///g')

while true; do
  clear
  echo $url2
  echo "------------------------------------"
  echo "Página atual: $url"
  echo -e "---------------OPÇÕES---------------"
  echo "1) Exibir Página"
  echo "2) Listar Links"
  echo "3) Acessar Link"
  echo "4) Listar Imagens"
  echo "5) Baixar Imagens"
  echo "6) Sair"
  echo "------------------------------------"
  read -p 'Digite o índice da opção desejada: ' opc
  echo "------------------------------------"
  case $opc in
    "1") exibir ;;
    "2") listar_links; pausa ;;
    "3") acessar_links ;;
    "4") listar_imagens; pausa ;;
    "5") baixar_imagens ;;
    "6") break ;;
    *) echo -e "\nDigite um índice válido" ;;
  esac
done