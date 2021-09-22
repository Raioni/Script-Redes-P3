#!/bin/bash

source 7.func.sh
for i in ${*}; do
  opc=$i
  case $opc in
    a) a ;;
    b) b ;;
    c) c ;;
  esac
done
