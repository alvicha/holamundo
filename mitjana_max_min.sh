#!/bin/bash
lineas=$(grep -c "" assis.txt)
suma=0;

for i in `seq 1 $lineas`
do
maxima=`cat assis.txt | head -n$i | tail -n1 | awk '{print $4}'`
minima=`cat assis.txt | head -n$i | tail -n1 | awk '{print $3}'`
suma=$((suma+maxima+minima))
done

media=$((suma/lineas))
echo "La mitjana de capacitat màxima i mínima és de: $media"
