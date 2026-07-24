#!/bin/bash

# $0 - Nome do programa
# $# - Quantidade de parêmetros
# $* - Todos os parâmetros inseridos
# $1-9 - Cada um dos parâmetros

echo "O script $0 recebeu $# parâmetros"

echo "Os parâmetros recbidos foram: $*"

echo ""
# echo "Parêmtro $1 foi o primeiro a ser recebido"

GUARDA_PARAMETRO="$1"

echo ""
echo "A variável GUARDA_PARAMETRO armazena o primeiro parâmetro digitado: $GUARDA_PARAMETRO"
