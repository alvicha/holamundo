#!/bin/bash
lineas=`cat matriculas2.txt | wc -l`
suma=0

for i in `seq 1 $lineas`
do
  notas=`cat matriculas2.txt | head -n$i | tail -n1 | awk '{print $1}'`
  suma=$((suma+notas))
done

media=$((suma/lineas))
echo "La media de todas las notas es $media"