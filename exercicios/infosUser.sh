#!/bin/bash

echo "==============================="
echo "Relatório do usuário: $1 "

echo ""

UDI=`id -u "$1"`

echo "UID: $UID"

echo "Nome: $1"

echo ""

LOGIN=`last "$1" | head -1`

echo "Último login: "
echo "Nome  Via  Porta  De  Último"
echo "$LOGIN"
echo "==============================="

