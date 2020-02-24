# Compte Rendu TP 2 - Admin Linux

## Exercice 1 - Variables d'environnement
1. La commande `history` permet d'afficher l'historique des dernières commandes effectuées. En cherchant `whereis history` le chemin suivant nous est renvoyé : 
> /usr/share/man/man3/history.3readline.gz.

2. En utilisant `printenv` sans arguments on peut afficher toutes les variables d'environnement dont `HOME` qui est appelée lors d'un `cd` sans arguments et qui correspond au chemin du répertoire 'HOME' de l'utilisateur.

3.  - `LANG` détermine la langue par défaut de la machine et des logiciels
    - `PWD` détermine le chemin du répertoire courant ('Print Working Directory').
    - `OLDPWD` détermine le dernier chemin du répertoire courant avant la dernière utilisation de la commande `cd` ('Path Working Directory').
    - `SHELL` chemin de l'interpréteur par défaut des scripts Shell

4. On utilise directement la commande `my_var='toto'`. Pour l'afficher, il s'uffit d'utiliser `echo`.

5. En utilisant la commande `bash` on passe sur l'environnement d'un nouveau shell et ne donne pas accès aux variables par les programmes lancés par le shell précédent. Pour repasser au précédent shell on utilise `exit`.

6. Pour rendre la variable accessible sur les programmes shell lancés on utilise la commande `export`. Exemple : 
 > export MY_VAR='batman'\
echo $MY_VAR

Ainsi, MY_VAR est une variable d'environnement.

7. De même, on fait :
> export NOMS='Brice FOLLEAS' \
> echo $NOMS

8. 
> echo 'Bonjour' $NOMS '!'

9. La commande `unset` va totalement supprimer la variable et donc ne plus prendre de place en mémoire contrairement au fait de l'affecter à une chaîne vide.

10. 
> echo '$HOME '=$HOME '(où chemin est votre dossier personnel d’après bash).'

# Programmation Bash

## Exercice 2 - Contrôle de mot de passe

Cf. testpwd.sh

## Exercice 3 - Expressions rationelles

Cf. testnb.sh

## Exercice 4 - Contrôle utilisateur

Cf. usercheck.sh

## Exercice 5 - Factorielles

Cf. factorielles.sh

## Exercice 6 - Le juste prix

Cf. rightprice.sh

## Exercice 7 - Statistiques

Cf. stats.sh

## Exercice 8 - Pour les plus rapides

Work in progress...
