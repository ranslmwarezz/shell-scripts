#!/bin/bash

# Uma função pode ou não ter 'function' antes do nome

function maiuscula () {
	echo "$1" | tr a-z A-Z
}

# Exemplo de como chamar a função

maiuscula shell
