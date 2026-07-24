#!/bin/bash

echo "=== Script de Busca de Alunos ==="

read -p "Informe o nome do alunos: " ALUNO

ALUNOENCONTRADO=`grep $ALUNO "/home/renanzzz/Estudos-ti/Automatizando Rotinas no Linux - Shell Script /CursoShellScript/arquivos/alunos.txt"`

echo $ALUNOENCONTRADO

echo "=== Fim do Script ==="
