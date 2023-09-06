#!/bin/bash
data=$1
lineas=$(grep -c "" assis.txt)
suma=0;
cont=0

for i in `seq 2 $lineas`
do
    assistencia=`cat assis.txt | head -n$i | tail -n1 | grep $data | awk '{print $5}'`
    dates=`cat assis.txt | grep $data | head -n$i | tail -n1 | awk '{print $1}'`
    if [ "$data" = "$dates" ]
    then
        suma=$((suma+assistencia))
        cont=1
    fi
done

if [ $cont -eq 1 ]
then
    echo "La assistencia total de la data especificada $data es de: $suma"
else
    echo "La data proporcionada $data no existeix en els registres."
fi
