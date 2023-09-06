#!/bin/bash
nombre=$1;
asignatura=$2;
nombres=`cat notas.txt | wc -l`

for i in `seq 2 $nombres`
do
    notas=`cat notas.txt | grep $nombre | grep $asignatura | awk '{print $3}' | head -n$i | tail -n1`
    alumno=`cat notas.txt | grep $nombre | awk '{print $1}' | head -n$i | tail -n1`
    asignaturas=`cat notas.txt | grep $nombre | grep $asignatura | awk '{print $2}' | head -n$i | tail -n1`
done

if [ $nombre = $alumno ] && [ $asignatura = $asignaturas ];
then
echo "La nota del alumno $nombre de la asignatura $asignatura es $notas";
else
echo "No se encontró calificación para $nombre en la asignatura $asignatura"
fi


