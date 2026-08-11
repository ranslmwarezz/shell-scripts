#!/bin/bash

for i in /home/renanzzz/Estudos-ti/'Automatizando Rotinas no Linux - Shell Script '/CursoShellScript/arquivos/*
	do
		if [ -f "$i" ];
		then
			echo "Verificando $i"
			LINHAS=$(cat "$i" | wc -l)
			echo "O arquivo $i possui $LINHAS linhas"
			echo
fi
done

