#!/bin/bash

USER=$(grep "$1" /etc/passwd)

if test -n "$USER"
then
  echo "O user existe"
  if [ "$1" = renanzzz ]
     then
            echo "OK"
  fi
else
  echo "O user não existe"
fi
