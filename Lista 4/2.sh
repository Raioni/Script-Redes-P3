#!/bin/bash

total=$(wc -l < $1)
for (( i=1; i<=$total;i++ ))
do
  linha=$(sed -n ${i}p $1)
  nome=$(echo $linha | awk '{print $1}')
  max=0
  for (( v=1; v<=$total;v++ ))
  do
    linha2=$(sed -n ${v}p $1)
    d=$(echo $linha2 | awk '{print $NF}')
    if [ $(echo $linha2 | awk '{print $1}') == $nome ]; then
      let max=max+d
    fi
  done
  echo "O usuário $nome baixou um total de $max" >> /tmp/down
done

cat /tmp/down | sort -n | uniq
rm /tmp/down

  