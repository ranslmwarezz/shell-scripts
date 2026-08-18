#!/bin/bash

read -p "Informe o nome do arquivo: " NOME_ARQUIVO
read -p "Informe o conjunto de caracteres que deseja ter dentro do arquivo: " CONJUNTO
read -p "Informe o tamanho do arquivo em bytes: " TAM_BYTES

# TAMANHO=0
> "$NOME_ARQUIVO"
INTERVALO=$((TAM_BYTES / 10))
PROXIMO="$INTERVALO"

	while true
do
	# O '<' faz o wc retornar apenas a quantidade de bytes do arquivo
	TAMANHO=$(wc -c < "$NOME_ARQUIVO")
	RESTANTE=$((TAM_BYTES - TAMANHO))
		# A sintaxe da usada no if retorna o número de caracteres da
		# variável 'CONJUNTO'
		if [[ "${#CONJUNTO}" -gt "$RESTANTE" ]];
			then
			echo -n ${CONJUNTO:0:RESTANTE} >> "$NOME_ARQUIVO"
		else
		echo -n "$CONJUNTO" >> "$NOME_ARQUIVO"


fi

		 TAMANHO=$(wc -c < "$NOME_ARQUIVO")

		PERCENTUAL=$((PROXIMO / INTERVALO * 10))
		if [[ "$TAMANHO" -ge "$PROXIMO" ]];
			then
			echo "$PERCENTUAL% - $PROXIMO Bytes"
			PROXIMO=$((PROXIMO + INTERVALO))
fi

	if [[ "$TAMANHO" -ge "$TAM_BYTES" ]];
		then
			break
    fi
done
