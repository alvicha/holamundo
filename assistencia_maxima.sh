#!/bin/bash
lineas=$(grep -c "" assis.txt)
assisMax=0;

for i in `seq 2 $lineas`;
do
    assistencia=`cat assis.txt | head -n$i | tail -n1 | awk '{print $5}'`
    if [ $assistencia -gt $assisMax ];
    then
        assisMax=$assistencia
    fi
    sectorMax=`cat assis.txt | grep $assisMax | awk '{print $2}'`
    dataMax=`cat assis.txt | grep $assisMax | awk '{print $1}'`
done
echo "El sector $sectorMax amb data $dataMax té una assistència màxima de: $assisMax"
