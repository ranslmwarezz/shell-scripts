#!/bin/bash

HORA=$(date +%H)
HORA2=$(date +%H:%M)

if (( "$HORA" >= 6 && "$HORA" <= 11 ))
  then
    echo "Bom dia!"
    echo ""
    echo "A hora atual é: $HORA2 AM"
elif (( "$HORA" >= 12 && "$HORA" <= 17 ))
   then
    echo "Boa tarde!"
    echo ""
    echo "A hora atual é: $HORA2 PM"
elif (( "$HORA" >= 18 && "$HORA" <= 23 ))
  then
	echo "Boa noite!"
   	echo ""
    echo "A hora atual é: $HORA2 PM"
else
	echo "Boa madrugada!"
	echo ""
    echo "A hora atual é: $HORA2 AM"
fi
