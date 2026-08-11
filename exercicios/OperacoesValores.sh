#!/bin/bash

NUM1=""
NUM2=""
ESCOLHA=""

read -p "Informe o Valor 1: " NUM1
read -p "Informe o valor 2: " NUM2

	if [[ -z "$NUM1" || -z "$NUM2" ]];
		then
			echo "Argumento inválido!"
			exit 1
fi

	echo "1 = Soma"
	echo "2 = Divisão"
	echo "3 = Multiplicação"
	echo "4 = Subtração"
	echo "Q = Sair"
        read -p "Escolha uma Operação: " ESCOLHA
	case "$ESCOLHA" in
		1)
			echo "Opção: $ESCOLHA"
			echo "Resultado da soma: $(expr "$NUM1" + "$NUM2")"
		;;
		2)
			echo "Opção: $ESCOLHA"
			if [ "$NUM2" == 0 ];
				then
					echo "Esse valor não é aceito!"
					exit 1
fi
			RESTO=$(expr "$NUM1" % "$NUM2")
			if [ "$RESTO" -gt 0 ];
				then
			 echo "Divisão com resto = $RESTO"
fi
			echo "Resultado da divisão: $(expr "$NUM1" / "$NUM2")"
		;;
		3)
		echo "Opção: $ESCOLHA"
		echo "Resultado da multiplicação: $(expr "$NUM1" \* "$NUM2")"
		;;
		4)
			echo "Opção: $ESCOLHA"
			echo "Resultado da subtração: $(expr "$NUM1" - "$NUM2")"
		;;
		Q)
			echo "Encerrando o programa..."
			sleep 3
			exit 0
		;;
		*)
			echo "Ocorreu um erro inesperado"
		;;
esac

