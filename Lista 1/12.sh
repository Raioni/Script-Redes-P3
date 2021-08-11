#!/bin/bash

a=$(echo "scale=2;($1*100)/$2"|bc)
b=$(echo "scale=2;($2*100)/$1"|bc)

echo "$a% $b%"
