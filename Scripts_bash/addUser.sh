#!/bin/bash

# Demander à l'utilisateur de saisir les noms des utilisateurs
read -p "Entrez les noms des utilisateurs à créer (séparés par des espaces) : " utilisateurs

# Vérifier si des noms ont été saisis
if [ -z "$utilisateurs" ]; then
    echo "Aucun utilisateur n'a été spécifié - Fin du script"
    exit 1
fi

# Boucle pour chaque utilisateur saisi
for utilisateur in $utilisateurs; do
    # Vérifier si l'utilisateur existe déjà
    if grep -q "^$utilisateur:" /etc/passwd; then
        echo "[Error] L'utilisateur $utilisateur existe déjà."
    else
        # Si l'utilisateur n'existe pas, le créer
        if sudo useradd "$utilisateur"; then
            echo "[Success] L'utilisateur $utilisateur a été créé."
        else
            echo "[Error] Erreur à la création de l'utilisateur $utilisateur."
        fi
    fi

done