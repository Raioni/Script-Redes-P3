#!/bin/bash

soma=0
for (( i=$1; i<=$2;i++ ))
do
  let soma=soma+$i
done
echo $soma
