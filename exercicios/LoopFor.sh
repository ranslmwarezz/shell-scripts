#!/bin/bash

for (( i=0; i <= 18;i++))
	do
		echo "O valor da variável é: $i"
done

	echo

for variavel in 1 2 3 4 5
	do
		echo "O valor da variável é: $variavel"
done

	echo

for variavel2 in $(seq 2 2 20)
	do
		echo "O valor da variável é: $variavel2"
done

	echo

for variavel3 in {1..10}
	do
		echo "O valor da variável é: $variavel3"
done
