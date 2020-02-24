#!/bin/bash

var = $(( ( RANDOM % 10 )  + 1 ))

read -p 'Veuillez rentrer le nombre dont vous aimeriez la factorielle:' input

while test if [ "$input" -ne "$var" ]
do
  if [ "$input" -gt "$var" ]; then
  echo "C'est moins !"
  elif [ "$input" -lt "$var" ]; then
  echo "C'est plus !"
  else
  echo "Gagné !"
  fi     
done