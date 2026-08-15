#!/bin/bash

clear

PROCESSO="$1"

	while true
do
       if ! pgrep "$PROCESSO" > /dev/null
		then
	echo -e "ATENÇÃO!!! O processo $PROCESSO NÃO está em execução\n"
fi
sleep 5
done


