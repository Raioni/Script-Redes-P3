#!/bin/bash

echo "DIRS"
for i in $(ls)
do
  if [ -d $i ]; then
    echo $i
  fi
done

echo "FILES"
for i in $(ls)
do
  if [ -f $i ] && [ ! -L $i ]; then
    echo $i
  fi
done

echo "LINKS"
for i in $(ls)
do
  if [ -L $i ]; then
    echo $i
  fi
done
