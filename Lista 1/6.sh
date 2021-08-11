#!/bin/bash

echo "-----Substituição de Variáveis-----"
echo "A substituição de variáveis é uma técnica do shell script"
echo "usada para imprimir o conteúdo de uma variável"
echo -e '\nSintaxe: $variável'
echo "Exemplo: "
echo "--------x=123"
echo '--------echo $x'
echo "Saída: 123"
echo -e "\n"
echo -e "\n-----Substituição de Shell-----"
echo "A substituição de shell é uma técnica do shell script"
echo 'onde o comando que estiver entre $() é executado e seu resultado'
echo '(o que o comando exibiria na tela) toma o seu lugar no script'
echo -e '\nSintaxe: $(comando)'
echo 'Exemplo: echo "A data de hoje é $(date +%d.%m.%y)"'
echo "Saída: "A data de hoje é $(date +%d.%m.%y)""
echo -e "\n"
echo -e "\n-----Substituição Aritmética-----"
echo "A substituição aritmética é uma das várias técnicas do shell script"
echo "usadas para realizar operações aritméticas"
echo -e '\nSintaxe: $((expressão matemática))'
echo -e 'Exemplo: $((10 + 10))'
echo -e 'Saída: 20'
