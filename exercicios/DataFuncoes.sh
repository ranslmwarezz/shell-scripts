#!/bin/bash


# ${VAR:inicio:quantidade}

function barras () {

	if [[ -z "$1" ]];then
	echo "O valor não pode ser nulo"
	return 1
fi

	detecta_data "$1"
	local FORMATO="$?"

	if [[ "$FORMATO" -eq 3 ]];then
	echo "A data informada é inválida"
	return
fi


	local DIA="${1:0:2}"
	local MES="${1:2:2}"
	local ANO="${1:4:4}"

	local DATA="$DIA/$MES/$ANO"

        echo "$DATA"
}

function detecta_data () {

	local DATA="${1//\//}"
	local DIA="${DATA:0:2}"
	local MES="${DATA:2:2}"


	DIA=$((10#"$DIA"))
	MES=$((10#"$MES"))

	local BR=0
        local US=0


	if [[ "$DIA" -ge 1 && "$DIA" -le 31 && "$MES" -ge 1 && "$MES" -le 12 ]];then
		BR=1
	fi

	if [[ "$DIA" -ge 1 && "$DIA" -le 12 && "$MES" -ge 1 && "$MES" -le 31 ]];then
		US=1
	fi

	if [[ "$BR" -eq 1 && "$US" -eq 0 ]];then
		return 0
	elif [[ "$BR" -eq 0 && "$US" -eq 1 ]];then
		return 1
	elif [[ "$BR" -eq 1 && "$US" -eq 1 ]];then
		return 2
	else
		return 3
	fi

}

function inverte_data () {

	if [[ -z "$1" ]]; then
  	  echo "O valor não pode ser nulo"
    	  return 1
fi

	local DATA="$1"

	detecta_data "$DATA"
	local FORMATO="$?"

	local DIA="${DATA:0:2}"
	local MES="${DATA:2:2}"
	local ANO="${DATA:4:4}"

	if [[ "$FORMATO" -eq 2 ]]; then
    	escolhe_formato
 	 FORMATO="$?"
fi

	if [[ "$FORMATO" -eq 0 || "$FORMATO" -eq 1 ]]; then
    	echo "$MES/$DIA/$ANO"
	else
	    echo "A data informada é inválida"
    	return 1
fi



}


function escolhe_formato () {

echo "Não foi possível identificar o padrão"
                echo -e "1 - BR (DD/MM/YYYY)\n2 - US (MM/DD/YYYY)"

       local OPCAO=""
                while [[ "$OPCAO" != "1" && "$OPCAO" != "2" ]]
        do

                read -p "Informe o formato (1 ou 2): " OPCAO

                case "$OPCAO" in
                        1)
                          return 0
                        ;;
                        2)
                         return 1
                        ;;
                *)
                        echo "Essa opção não é válida"
                ;;
      esac
done



}

function data_extensa() {

	local DATA="$1"

	 if [[ -z "$DATA" ]]; then
          echo "O valor não pode ser nulo"
          return 1
fi

	detecta_data "$DATA"
	local FORMATO="$?"

	if [[ "$FORMATO" -eq 2 ]];then
	escolhe_formato
	FORMATO="$?"
fi

	if [[ "$FORMATO" -eq 3 ]];then
	echo "A data informada é inválida"
	return 1
fi

	local DIA
        local MES
        local ANO="${DATA:4:4}"
        local MES_EXTENSO

	if [[ "$FORMATO" -eq 0 ]];then
		DIA="${DATA:0:2}"
		MES="${DATA:2:2}"
	else
	MES="${DATA:0:2}"
        DIA="${DATA:2:2}"
fi
	case "$MES" in

	01)
	MES_EXTENSO="Janeiro"
	;;
	02)
	MES_EXTENSO="Fevereiro"
	;;
	03)
	MES_EXTENSO="Março"
	;;
	04)
	MES_EXTENSO="Abril"
	;;
	05)
	MES_EXTENSO="Maio"
	;;
	06)
	MES_EXTENSO="Junho"
	;;
	07)
	MES_EXTENSO="Julho"
	;;
	08)
	MES_EXTENSO="Agosto"
	;;
	09)
	MES_EXTENSO="Setembro"
	;;
	10)
	MES_EXTENSO="Outubro"
	;;
	11)
	MES_EXTENSO="Novembro"
	;;
	12)
	MES_EXTENSO="Dezembro"
	;;
esac

     echo "$DIA de $MES_EXTENSO de $ANO"

}

function help () {

	echo "Uso: ./DataFuncoes.sh <OPCAO> <DATA>"
	echo "DATA nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"

	echo

	echo -e "Opções:\n"
	echo "-f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 Inválido"
	echo "-i = Inverte formato BR para US e US para BR. Inclui as Barras"
	echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
	echo "-e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de Agosto de 1981"

}


case "$1" in
	-f)
	detecta_data "$2"
	echo "$?"
	;;
	-i)
	inverte_data "$2"
	;;
	-b)
	barras "$2"
	;;
	-e)
	data_extensa "$2"
	;;
	--help)
	help "$1"
	;;
	*)
	;;
esac






