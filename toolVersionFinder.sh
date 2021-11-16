#!/bin/bash

filename=$1
n=1

echo "Program,path,--version,-v,-V" > $filename.csv

while read line; do
# reading each line
pth=$(which $line)

if [ "$pth" = "" ]; then
        pth="Not Found"
        ver0="--"
        ver1="--"
        ver2="--"
else
        ver0=$($pth --version | head -2 | tr '\n' '|' | tr '\r' '|' | tr ',' ' ' | tr '\t' ' ')
        ver1=$($pth -v | head -2 | tr '\n' '|' | tr '\r' '|' | tr ',' ' ' | tr '\t' ' ')
        ver2=$($pth -V | head -2 | tr '\n' '|' | tr '\r' '|' | tr ',' ' ' | tr '\t' ' ')
fi

echo "$line,$pth,$ver0,$ver1,$ver2" >> $filename.csv

done < $filename
