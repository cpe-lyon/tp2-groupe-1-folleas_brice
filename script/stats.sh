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

function is_good()
{
re='^[+-]?[0-9]+([.][0-9]+)?$'

if [ $input -lt 100 && $input -gt -100 ]; then
    return 1
else
    return 0
fi
}
	
# Test functions
for input in $1 $2 $3
do
is_number $input
if [ $? =~ 0 ]; then
    echo -e 'Erreur : '$input' n'\''est pas un nombre'
fi

is_good $input
if [ $? =~ 0 ]; then
    echo -e 'Erreur : '$input' n'\''est pas compris dans le bon intervalle'
fi
done

max=$#;
min=$1;
mean=0;

  for i in $@
  do
    if [[ $i -gt $max ]] 
    then 
        max=$i
    fi
    if [ $i -lt $min ] 
    then
       min=$i
    fi
	(( mean = $mean+$i ))

  done

echo -e 'Le maximum est : '$max
echo -e 'Le minimum est : '$min
echo -e 'La moyenne est : '$(($mean/$#))

# Je reconnais ne pas avoir utilisé la commande SHIFT même si j'ai bien regardé la doc, je ne voyais pas comment l'utiliser
