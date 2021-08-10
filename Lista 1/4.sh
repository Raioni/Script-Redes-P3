#!/bin/bash

DATA="$(date +%H-%d-%m-%Y)"

mkdir /tmp/$DATA
cp * /tmp/$DATA
