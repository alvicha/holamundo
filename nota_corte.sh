#!/bin/bash

# Lee el archivo matriculas.txt y ordena las notas de forma descendente
notas=$(cat matriculas2.txt | sort -k2 -rn | awk '{print $2}')

# Obtiene la nota de corte (la nota del último alumno que accede)
nota_corte=$(echo "$notas" | head -n 5 | tail -n 1)

# Muestra la nota de corte
echo "La nota de corte es: $nota_corte"

# Filtra los alumnos que tienen notas iguales o superiores a la nota de corte
alumnos=$(cat matriculas2.txt | awk -v nota_corte="$nota_corte" '$2 >= nota_corte {print $1}')

# Muestra los apellidos de los alumnos que acceden
echo "Los apellidos de los alumnos que acceden son:"
echo "$alumnos"