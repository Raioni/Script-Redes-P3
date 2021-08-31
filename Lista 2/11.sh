#!/bin/bash

for i in ${*}
do
  if [ $i == "logica" ]; then
    echo -e "\n----------PARAMETROS LÓGICOS DO COMANDO TEST----------"
    echo -e "\n1) -a : exp1 -a exp2, retorna true se tanto a exp1 quanto a exp2 forem verdadeiras"
    echo -e "\n2) -o : exp1 -o exp2, retorna true se exp1 ou exp2 forem verdadeiras"
    echo -e "\n3) ! : faz o inverso do test, retorna falha quando é sucesso, e sucesso quando é falha"
  elif [ $i == "aritmetica" ]; then
    echo -e "\n----------PARAMETROS ARITMÉTICOS DO COMANDO TEST----------"
    echo -e "\n1) -eq : int1 -eq int2, retorna true caso int1 for igual a int2"
    echo -e "\n2) -ge : int1 -ge int2, retorna true caso int1 for maior ou igual a int2"
    echo -e "\n3) -gt : int1 -gt int2, retorna true caso int1 for maior que int2"
    echo -e "\n4) -le : int1 -le int2, retorna true caso int1 for menor ou igual a int2"
    echo -e "\n5) -lt : int1 -lt int2, retorna true caso int1 for menor que int2"
    echo -e "\n6) -ne : int1 -ne int2, retorna true caso int1 NÃO for igual a int2"
  elif [ $i == "strings" ]; then
    echo -e "\n----------PARAMETROS PARA STRINGS DO COMANDO TEST----------"
    echo -e "\n1) = : str1 = str2, retorna true caso a str1 seja igual a str2"
    echo -e "\n2) != : str1 != str2, retorna true caso a str1 seja diferente da str2"
  elif [ $i == "variáveis" ]; then
    echo -e "\n----------PARAMETROS PARA VARIÁVEIS DO COMANDO TEST----------"
    echo -e "\n1) -n : -n var1, retorna true caso o tamanho da var1 seja diferente de 0"
    echo -e "\n2) -z : -z var1, retorna true caso o tamanho da var1 seja 0"
  elif [ $i == "arquivos" ]; then
    echo -e "\n----------PARAMETROS PARA ARQUIVOS DO COMANDO TEST----------"
    echo -e "\n1) -ef : file1 -ef file2, retorna true caso file1 e file2 possuam o mesmo dispositivo e números inode"
    echo -e "\n2) -nt : file1 -nt file2, retorna true caso file1 seja mais novo (data de modificação) que file2"
    echo -e "\n3) -ot : file1 -ot file2, retorna true caso file1 seja mais velha que file2"
    echo -e "\n4) -b : -b file, retorna true caso file1 exista e seja block special"
    echo -e "\n5) -c : -c file, retorna true caso file1 exista e seja character special"
    echo -e "\n6) -d : -d file, retorna true caso file1 exista e seja um diretório"
    echo -e "\n7) -e : -e file, retorna true caso file1 exista"
    echo -e "\n8) -f : -f file, retorna true caso file1 exista e seja uma regular file"
    echo -e "\n9) -g : -g file, retorna true caso file1 exista e seja set-group-ID"
    echo -e "\n10) -G : -G file, retorna true caso file1 exista e pertence ao ID de grupo efetivo"
    echo -e "\n11) -h : -h file, retorna true caso file1 exista e seja um link simbólico (mesma coisa de -L)"
    echo -e "\n12) -k : -k file, retorna true caso file1 exista e tem seu sticky bit ativado"
    echo -e "\n13) -L : -L file, retorna true caso file1 exista e seja um link simbólico (mesma coisa de -h)"
    echo -e "\n14) -O : -O file, retorna true caso file1 exista e pertence ao ID de usuário efetivo"
    echo -e "\n15) -p : -p file, retorna true caso file1 exista e seja um pipe"
    echo -e "\n16) -r : -r file, retorna true caso file1 exista e a possua a permissão de leitura ativada"
    echo -e "\n17) -s : -s file, retorna true caso file1 exista e possua um tamanho maior do que 0"
    echo -e "\n18) -S : -S file, retorna true caso file1 exista e é um socket"
    echo -e "\n19) -t : -t FD, retorna true caso o descritor de arquivo FD esteja aberto no terminal "
    echo -e "\n20) -u : -u file, retorna true caso file1 exista e o seu bit de sey-user-ID está ativado"
    echo -e "\n21) -w : -w file, retorna true caso file1 exista e possua a permissão de escrita ativada"
    echo -e "\n22) -x : -x file, retorna true caso file1 exista e possua a permissão de execução (ou procura) ativada"


  fi
done
