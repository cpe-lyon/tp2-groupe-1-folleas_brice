#!/bin/bash

# Functions
function is_number()
{
re='^[+-]?[0-9]+([.][0-9]+)?$'

if ! [[ $1 =~ $re ]] ; then 
    return 1
else
    return 0
fi
}

function factorielles()
{
    res=1
    while test $input -gt 1
    do
    res= $res \* $input
    input= $input-1

    done
}

# Code
read -p 'Veuillez rentrer le nombre dont vous aimeriez la factorielle:' input
is_number $input
if [ $? == 0 ]; then
    echo 'Bien joué!'
else
    echo -e 'Erreur : Il est impossible de calculer la factorielle de '$input
fi

factorielles()

echo $res
