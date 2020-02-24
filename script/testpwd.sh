#!/bin/bash

PASSWORD='password'

read -s -p 'Veuillez saisir votre mot de passe: ' password

if [ "$password" = "$PASSWORD" ];
  then echo -e '\nVous avez saisi le bon mot de passe. Bravo!'
else
  echo -e '\nMot de passe incorrect.'
fi

