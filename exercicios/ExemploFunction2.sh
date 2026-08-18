#!/bin/bash

function ler () {
 	read -p "Informe o nome: " NOME
	read -p "Informe o sobrenome: " SOBRENOME
	return 10
}

ler
echo "Return code =" "$?"
echo "$NOME $SOBRENOME"
