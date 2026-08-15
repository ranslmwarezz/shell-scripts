#!/bin/bash

clear

UID_MIN=1000
UID_MAX=6000

IFS=$'\n'

	echo -e "USUÁRIO\t UID\t DIR\t HOME\t NOME OU DESCRIÇÃO"

	for i in $(cat /etc/passwd)
do

#	echo "[I] = $i"
	IFS=:
	read USUARIO SENHA ID GID NOME HOME SHELL <<< "$i"

		if [[ "$ID" -ge "$UID_MIN" && "$ID" -le "$UID_MAX" ]];
		then
		echo -e "$USUARIO $ID\t $HOME\t $NOME"
		fi

done
