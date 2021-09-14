#!/bin/bash
read -p "Digite um endereço IP: " ip
oc1=$(echo $ip | cut -d "." -f 1)
oc2=$(echo $ip | cut -d "." -f 2)
oc3=$(echo $ip | cut -d "." -f 3)
oc4=$(echo $ip | cut -d "." -f 4)

echo ""
echo "Octeto #1: $oc1 em binário $(echo "obase=2;$oc1" | bc)"
echo "Octeto #2: $oc2 em binário $(echo "obase=2;$oc2" | bc)"
echo "Octeto #3: $oc3 em binário $(echo "obase=2;$oc3" | bc)"
echo "Octeto #4: $oc4 em binário $(echo "obase=2;$oc4" | bc)"