#!/bin/bash

clear

NOME_MAQUINA=`hostname`
DATA_ATUAL=`date`
TEMPO_ATIVA=`uptime -p`
VERSAO_KERNEL=`uname -r`
QTD_CORE=`grep "cpu cores" /proc/cpuinfo | uniq | cut -d " " -f 3`
MODELO_CPU=`grep "model name" /proc/cpuinfo | uniq | cut -d " " -f 3-9`

MEM_KB=`grep "MemTotal:" /proc/meminfo | awk '{print $2}'`

MEM_TOTAL=`expr "$MEM_KB" / 1024`

PARTICOES=`df -h -B GB -x tmpfs -x efivarfs -x ecryptfs`

echo "===================================================
     Informações da máquina: $NOME_MAQUINA
     Data: $DATA_ATUAL
==================================================="

echo "Tempo que está ativa: $TEMPO_ATIVA"
echo "Versão do kernel: $VERSAO_KERNEL"

echo ""

echo "CPUs:"
echo "Quantidade de Core: $QTD_CORE"
echo "Modelo da CPU: $MODELO_CPU"

echo "Memória Total: $MEM_TOTAL MB"

echo ""

echo "Partições:"
echo "$PARTICOES"

echo "===================================================
                Fim do Script
==================================================="
