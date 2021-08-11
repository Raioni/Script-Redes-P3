#!/bin/bash

DATA="$(date +%H-%d-%m-%Y)"

mkdir /tmp/$DATA
cp * /tmp/$DATA
zip -r $DATA.zip /tmp/$DATA
rm -r /tmp/$DATA
