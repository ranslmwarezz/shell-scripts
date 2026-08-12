#!/bin/bash

until ps aux | grep firefox | grep -v grep > /dev/null
do
	echo "Inicie o FireFox..."
	sleep 3
	echo
done
echo "FireFox iniciado"
echo "PID: $(pgrep firefox)"
