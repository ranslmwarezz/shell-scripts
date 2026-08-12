#!/bin/bash

clear
read -p "Informe o limite de processos: " MAXIMO

while [ $(ps aux | wc -l) -le "$MAXIMO" ]
do
	echo "Tudo OK"
	echo "Processos Atuais: $(ps aux | wc -l)"
	sleep 3
done

echo "Limite de processos excedido"
echo "Por favor verifique o sistema"
