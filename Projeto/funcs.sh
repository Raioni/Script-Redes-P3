function pausa() {
  echo " "
  echo "------------------------------------"
  read -p 'Pressione qualquer coisa para continuar...'
}

function exibir() {
  clear
  echo "------------------------------------"
  echo "EXIBINDO A PÁGINA: $url"
  echo "------------------------------------"
  echo ' '
  cat /tmp/index.html | sed -r 's/$/framengo/g' | tr '\n' '2' |sed 's/<[^>]*>//g' | sed -E 's/(body \{.{1,}\})|(body\{.{1,}\})//g' | sed 's/framengo2/\n/g' | more
  read -p 'Pressione qualquer coisa para continuar...'
}

function listar_links() {
  clear
  > /tmp/links
  > /tmp/links2
  echo "-----------------------------------------"
  echo "EXIBINDO OS LINKS DA PÁGINA: $url"
  echo "-----------------------------------------"
  echo ' '
  cat /tmp/index.html | grep -Eo '<a[^>]*>' | grep -Eo 'href=\"[^\"]*\"' | sed -E -e 's/href=//g' -e 's/"//g' > /tmp/links 
  total=$(wc -l < /tmp/links)
  for (( i=1; i<=$total;i++ ))
  do
    linha=$(sed -n ${i}p /tmp/links)
    if [ $(echo $linha | grep -Eo '^.') == "/" ]; then
      echo "${url2}${linha}" >> /tmp/links2
    elif [ "$(echo $linha | grep -Eo '^.{4}')" == "http" ]; then
      echo "$linha" >> /tmp/links2
    else
      echo "$url2/$linha" >> /tmp/links2
    fi
  done
  cat /tmp/links2 | sort -n | uniq > /tmp/links2
  cat -n /tmp/links2
}


function acessar_links() {
  listar_links
  echo "-----------------------------------------"
  read -p "Digite o índice do link que deseja acessar: " id
  echo "-----------------------------------------"
  total=$(wc -l < /tmp/links2)

  for (( i=1; i<=$total;i++ ))
  do
    linha=$(sed -n ${i}p /tmp/links2)
    if [ "$i" -eq "$id" ]; then
      url=$linha
      url2=$(echo $url | sed -E -e 's/https:\/\///g' -e 's/\/.{1,}//g' -e 's/\///g')
      wget $linha -O /tmp/index.html &>/dev/null
    fi
  done
}

function listar_imagens() {
  clear
  > /tmp/imagens
  > /tmp/imagens2
  echo "-----------------------------------------"
  echo "EXIBINDO AS IMAGENS DA PÁGINA: $url"
  echo "-----------------------------------------"
  echo ' '  
  cat /tmp/index.html | grep -Eo '<img[^>]*>' | grep -Eo 'src=\"[^\"]*\"' | sed -E -e 's/src=//g' -e 's/"//g' > /tmp/imagens

  total=$(wc -l < /tmp/imagens)
  for (( i=1; i<=$total;i++ ))
  do
    linha=$(sed -n ${i}p /tmp/imagens)
    if [ $(echo $linha | grep -Eo '^.') == "/" ]; then
      echo "${url}${linha}" >> /tmp/imagens2
    elif [ "$(echo $linha | grep -Eo '^.{4}')" == "http" ]; then
      echo "$linha" >> /tmp/imagens2
    else
      echo "${url2}/${linha}" >> /tmp/imagens2
    fi
  done
  cat /tmp/imagens2 | sort -n | uniq > /tmp/imagens2
  cat -n /tmp/imagens2
}

function baixar_imagens() {
  listar_imagens
  echo "-----------------------------------------"
  read -p "Digite o índice da imagem que deseja baixar: " id
  echo "-----------------------------------------"

  total=$(wc -l < /tmp/imagens2)
  for (( i=1; i<=$total;i++ ))
  do
    linha=$(sed -n ${i}p /tmp/imagens2)
    if [ "$i" -eq "$id" ]; then
      wget $linha &>/dev/null
    fi
  done
}