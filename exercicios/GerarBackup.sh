#!/bin/bash

clear

DATA=$(date +%Y%m%d%H%M)
NOMEARQ="backup_home_$DATA.tgz"

echo "Esse script faz o Backup apenas do diretório Home"
echo

if [ ! -d "$HOME/Backup" ]; then
    echo "Criando o diretório de Backup..."

    if mkdir "$HOME/Backup"; then
        echo "Diretório criado!"
    fi
fi

VERIFICACAO=$(find "$HOME/Backup" -name "backup_home_*.tgz" -mtime -7)

if [ -n "$VERIFICACAO" ]; then
    echo "Já foi gerado um backup nos últimos 7 dias."

    read -p "Deseja continuar? (N/s): " ESCOLHA

    if [ "$ESCOLHA" != "s" ]; then
        echo "Encerrando o programa..."
        exit 1
    fi

    echo "Será criado mais um backup para essa semana."
fi

echo "Criando Backup..."
sleep 3

if tar -czvf "$HOME/Backup/$NOMEARQ" "$HOME"; then
    echo
    echo "O backup de nome \"$NOMEARQ\" foi criado em $HOME/Backup"
    echo "Backup concluído!"
fi
