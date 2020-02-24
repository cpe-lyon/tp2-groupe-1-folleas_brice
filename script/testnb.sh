#!/bin/bash

function is_number()
{
re='^[+-]?[0-9]+([.][0-9]+)?$'

if ! [[ $1 =~ $re ]] ; then 
    return 1
else
    return 0
fi
}

read -p 'Veuillez saisir un nombre:' input
is_number $input
if [ $? == 0 ]; then #Ceci permet d'avoir le retour de la dernière question appelée
    echo 'Bien joué!'
else
    echo -e 'Erreur : '$input' n'\''est pas un nombre'
fi

