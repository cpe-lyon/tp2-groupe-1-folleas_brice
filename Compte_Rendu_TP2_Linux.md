# Compte Rendu TP 2 - Admin Linux

## Exercice 1 - Variables d'environnement - Bash

1. Dans quels dossiers bash trouve-t-il les commandes tapées par l’utilisateur ?

La commande `history` permet d'afficher l'historique des dernières commandes effectuées. En cherchant `whereis history` le chemin suivant nous est renvoyé :

`/usr/share/man/man3/history.3readline.gz.`

2. Quelle variable d’environnement permet à la commande cd tapée sans argument de vous ramener dans votre répertoire personnel ?

En utilisant `printenv` sans arguments on peut afficher toutes les variables d'environnement dont `HOME` qui est appelée lors d'un `cd` sans arguments et qui correspond au chemin du répertoire 'HOME' de l'utilisateur.

3. Explicitez le rôle des variables LANG, PWD, OLDPWD, SHELL et _.  

- `LANG` détermine la langue par défaut de la machine et des logiciels
- `PWD` détermine le chemin du répertoire courant ('Print Working Directory').
- `OLDPWD` détermine le dernier chemin du répertoire courant avant la dernière utilisation de la commande `cd` ('Path Working Directory').
- `SHELL` chemin de l'interpréteur par défaut des scripts Shell

4. Créez une variable locale MY_VAR (le contenu n’a pas d’importance). Vérifiez que la variable existe.

On utilise directement la commande `my_var='toto'`. Pour l'afficher, il s'uffit d'utiliser `echo`.

5. Tapez ensuite la commande bash. Que fait-elle ? La variable MY_VAR existe-t-elle ? Expliquez. A la fin
de cette question, tapez la commande exit pour revenir dans votre session initiale.

En utilisant la commande `bash` on passe sur l'environnement d'un nouveau shell et ne donne pas accès aux variables par les programmes lancés par le shell précédent. Pour repasser au précédent shell on utilise `exit`.

6. Transformez MY_VAR en une variable d’environnement et recommencez la question précédente. Expliquez.

Pour rendre la variable accessible sur les programmes shell lancés on utilise la commande `export`. Exemple :
 > export MY_VAR='batman'\
echo $MY_VAR

Ainsi, MY_VAR est une variable d'environnement.

7. Créer la variable d’environnement NOMS ayant pour contenu vos noms de binômes séparés par un espace.
Afficher la valeur de NOMS pour vérifier que l’affectation est correcte.

De même, on fait :
`export NOMS='Brice FOLLEAS' \`
`echo $NOMS`

8. Ecrivez une commande qui affiche ”Bonjour à vous deux, binôme1 binôme2 !” (où binôme1 et binôme2 sont vos deux noms) en utilisant la variable NOMS.

`echo 'Bonjour' $NOMS '!'`

9. Quelle différence y a-t-il entre donner une valeur vide à une variable et l’utilisation de la commande unset ?

La commande `unset` va totalement supprimer la variable et donc ne plus prendre de place en mémoire contrairement au fait de l'affecter à une chaîne vide.

10. Utilisez la commande echo pour écrire exactement la phrase : $HOME = chemin (où chemin est votre dossier personnel d’après bash).

> echo '$HOME '=$HOME '(où chemin est votre dossier personnel d’après bash).'

# Programmation Bash

## Exercice 2 - Contrôle de mot de passe
Écrivez un script testpwd.sh qui demande de saisir un mot de passe et vérifie s’il correspond ou non au contenu d’une variable PASSWORD dont le contenu est codé en dur dans le script. Le mot de passe saisi par l’utilisateur ne doit pas s’afficher.

>Voir le script dans ./script/testpwd.sh

## Exercice 3 - Expressions rationnelles

Ecrivez un script qui prend un paramètre et utilise la fonction suivante pour vérifier que ce paramètre est un nombre réel :

> function is_number()
{
&nbsp; re='^[+-]?[0-9]+([.][0-9]+)?$'
&nbsp; if ! [[ $1 =~ $re ]] ; then
&nbsp;&nbsp; return 1
&nbsp; else
&nbsp;&nbsp; return 0
&nbsp; fi
}

Il affichera un message d’erreur dans le cas contraire.

>Voir le script dans ./script/testnb.sh

## Exercice 4 - Contrôle utilisateur

Écrivez un script qui vérifie l’existence d’un utilisateur dont le nom est donné en paramètre du script. Si le script est appelé sans nom d’utilisateur, il affiche le message : ”Utilisation : nom_du_script nom_utilisateur”, où nom_du_script est le nom de votre script récupéré automatiquement (si vous changez le nom de votre script, le message doit changer automatiquement)

>Voir le script dans ./script/usercheck.sh

## Exercice 5 - Factorielles

Écrivez un programme qui calcule la factorielle d’un entier naturel passé en paramètre (on supposera que l’utilisateur saisit toujours un entier naturel).

>Voir le script dans ./script/factorielles.sh

## Exercice 6 - Le juste prix

Écrivez un script qui génère un nombre aléatoire entre 1 et 1000 et demande à l’utilisateur de le deviner. Le programme écrira ”C’est plus !”, ”C’est moins !” ou ”Gagné !” selon les cas (vous utiliserez $RANDOM).

>Voir le script dans ./script/rightprice.sh

## Exercice 7 - Statistiques

1. Écrivez un script qui prend en paramètres trois entiers (entre -100 et +100) et affiche le min, le max et la moyenne. Vous pouvez réutiliser la fonction de l’exercice 3 pour vous assurer que les paramètres sont bien des entiers.
2. Généralisez le programme à un nombre quelconque de paramètres (pensez à SHIFT)
3. Modifiez votre programme pour que les notes ne soient plus données en paramètres, mais saisies et stockées au fur et à mesure dans un tableau.

>Voir le script dans ./script/stats.sh

## Exercice 8 - Pour les plus rapides

Écrivez un script qui affiche les combinaisons possibles de couleurs (cf. TP 1) :

>Work in progress...


CPE Lyon - 3 IRC - FOLLÉAS Brice
