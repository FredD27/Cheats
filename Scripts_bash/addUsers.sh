#!/bin/bash

# Check if any args is provided

if [ $# -eq 0 ]
then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

# Get all args separated in variable
args=$@


for utilisateur in $args
do
# Check if utilisateur is allready in the system
  if grep -q "$utilisateur:" /etc/passwd; then
     echo "[Error] L'utilisateur $utilisateur existe déjà."
  else
# If he doesn't exist, he's created
     if sudo useradd $utilisateur; then
        echo "[Success] L'utilisateur $utilisateur a été créé."
     else
        echo "[Error] Erreur à la création de l'utilisateur $utilisateur."
     fi
  fi

done
