Commande
--------

Flux standard :
* < stdin 0 Entré flux vers la commande
* > stdout 1 Sortie flux vers un fichier
* >> stdout 2 Redirige vers la fin d'un fichier (append)
* 2> Sortie erreur standard
* ; Sépare les commandes
* && Si la première commande fonctionne, on fais la deuxième
* || Si la première commande echoue, on fais la deuxième

* cat : Affiche un fichier
* head : Affiche les 10 premières lignes d'un fichier (option -n 5 ou -5)
* tail : Affiche les dernières lignes d'un fichier (option -n 5 ou -5) option -f intéressante
* man : voir les manuels des commandes
* wc : Affiche le nombre de lignes, mot et caractères d'un fichier
* tr : remplace ou supprime des caractères
* tee : insère le contenu de stdin dans un fichier mais aussi dans le stdout
* sort : trier
* uniq : enleve les lignes en doublons de maniere consécutive
* grep : filtre
* sed : filtre et permet d'afficher, supprimer ou remplacer du texte
* find : recherche des fichiers
* xargs : transforme le flux standard en arguments
