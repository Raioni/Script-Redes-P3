#!/bin/bash

cat $1 | grep -E -o  '.{1,}  ' > meninos.txt
cat $1 | sed -E 's/.{1,}  //g' > meninas.txt