#!/bin/bash

# Verificação sem if para saber se o usuário existe no sistema.
ls /home/"$1" > /dev/null 2>&1 || {  echo "Usuário inexistente"; exit 1; }

echo "==============================="
echo "Relatório do usuário: $1 "

echo ""

UDI=`id -u "$1"`

USOHOME=`du -sh /home/"$1" | cut -f1`

echo "UID: $UDI"

echo "Nome: $1"

echo "Total usado: $USOHOME"

echo ""

LOGIN=`last "$1" | head -1`

echo "Último login: "
echo "Nome  Via  Porta  De  Último"
echo "$LOGIN"
echo "==============================="
exit 0
