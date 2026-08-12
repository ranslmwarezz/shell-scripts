#!/bin/bash

read -p "Qual o melhor aluno(a): " MELHOR

for i in $(cat alunos3.txt)
do
	if [ "$i" = "$MELHOR" ];
	then
		echo "A $i é a melhor aluno(a)"
		break
	fi
	echo "Aluno(a): $i"
done
