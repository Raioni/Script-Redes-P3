#!/bin/bash

cat $1 | sed -E 's/\b([0-9]{1,3}\.){3}[0-9]{1,3}\b/**!!CENSU--RADO!!**/g'
