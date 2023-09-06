#!/bin/bash
matriculas=`cat notas.txt | wc -l`
echo $matriculas
matriculas=$((matriculas-1))
echo "Hay $matriculas matriculas."