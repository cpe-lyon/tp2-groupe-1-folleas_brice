#!/bin/bash

echo "bonjour, veuillez rentrer la commande dont vous cherchez le paquet :"

read command

dpkg -S $( which $command )
