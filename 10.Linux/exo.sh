#!/bin/bash
# Récupérer le shell de root
echo "Récupérer le shell de root"

cat /etc/passwd | grep ^root: | cut -d: -f 7
echo ""

# Afficher les 3 fichiers les plus volumineux d'un dossier
echo "Afficher les 3 fichiers les plus volumineux d'un dossier"

du -ad 1 /boot 2> /dev/null | sort -nr | head -4 | tail -3
echo "Ou avec option -h pour écriture humaine"
du -ahd 1 /boot 2> /dev/null | sort -hr | head -4 | tail -3
echo ""

# Récupérer les utilisateurs, leur uid et leur shell
echo "Récupérer les utilisateurs, leur uid et leur shell"
cut -d : -f 1,3,7 /etc/passwd
echo ""

# Afficher les uid et gid d'un utilisateur
echo "Afficher les uid et gid d'un utilisateur"
id stagiaire
echo ""

# Stocker dans une variable, le résultat de la commande id
id="$(id stagiaire)"

# Stocker dans une variable un utilisateur. Stocker le résultat de la sortie standard et erreur standard dans le même fichier 
user=stagiaire ; id $user >> user.txt 2>&1

# Récupérer l'ip de eth0
sudo ifconfig eth0 | grep "inet adr:" | cut -d: -f2 | cut -d " " -f1;
ip=$(sudo ifconfig eth0 | egrep -o 'inet adr:[^ ]+' | cut -d: -f2); echo $ip;
sudo ifconfig eth0 | sed -nr 's/.*inet adr:([^ ]+).*/\1/; 2p';

# Créer un fichier dans un dossier et un lien dur de ce fichier dans un sous dossier
# Puis recherche de liens durs associés à un fichier
touch source
ln source /sousdossier/lien
read -p "Fichier : " file ; find . -inum $(ls -i $file | cut -d" " -f1)
