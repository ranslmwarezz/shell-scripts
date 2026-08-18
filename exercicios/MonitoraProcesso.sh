#!/bin/bash

clear

if [ "$#" -eq 0 ]
	then
	echo "Informe um processo como argumento"
	echo "Exemplo: ./MonitoraProcesso.sh <nome-processo>"
	exit 1
fi

PROCESSO="$1"

	while true
do
       if ! pgrep "$PROCESSO" > /dev/null
		then
	echo -e "ATENÇÃO!!! O processo $PROCESSO NÃO está em execução"
fi
sleep 5
done


