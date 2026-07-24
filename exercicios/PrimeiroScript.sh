#!/bin/bash


DATAHORA=`date +%H:%M`
ARQALUNOS="/home/renanzzz/Estudos-ti/Automatizando Rotinas no Linux - Shell Script /CursoShellScript/arquivos/alunos.txt"

clear
echo "==== Meu Primeiro Script ===="
echo ""
echo "Exibir data e hora atual: $DATAHORA"
echo "Listagem dos Alunos: "
sort "$ARQALUNOS"
echo "=== Fim do Script ===="

cd /home/reanna

RETURN_CODE="$?"


DATAHORA=`date +%H:%M`
echo ""
echo "Nova hora: $DATAHORA"

echo "Retorno do comando cd: $RETURN_CODE"
