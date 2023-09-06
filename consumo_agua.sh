#!/bin/bash
consumo_agua=$1;

calculoTarifa1=30;
calculoTarifa2=$((consumo_agua * 2 + 5))
calculoTarifa3=$((consumo_agua * 3))

if (( ( $calculoTarifa3 < $calculoTarifa2 ) && ( $calculoTarifa3 < $calculoTarifa1 ) ));
then
echo "La tarifa que debe de escoger es la tarifa 3."
elif (( ( $calculoTarifa2 < $calculoTarifa1 ) && ( $calculoTarifa2 < $calculoTarifa3 ) ));
then
echo "La tarifa que debe de escoger es la tarifa 2."
else
echo "La tarifa que debe de escoger es la tarifa 1."
fi