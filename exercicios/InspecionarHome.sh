#!/bin/bash

clear

UID_MIN=1000
UID_MAX=6000

IFS=$'\n'

	for i in $(cat /etc/passwd)
do
	IFS=:
	read USUARIO S I G N HOME SH <<< "$i"
	if [[ "$I" -ge "$UID_MIN" && "$I" -le "$UID_MAX" ]];
		then
JPG=$(find /home/"$USUARIO" -name '*.jpg' | wc -l)
MP4=$(find /home/"$USUARIO" -name '*.mp4' | wc -l)
MP3=$(find /home/"$USUARIO" -name '*.mp3' | wc -l)

		echo -e "\nUsuario: $USUARIO"
		echo "Arquivos JPG: $JPG"
		echo "Arquivos MP3: $MP3"
		echo "Arquivos MP4: $MP4"
		echo
fi
done
