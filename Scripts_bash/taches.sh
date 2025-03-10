#!/bin/bash

# Initialisation des tâches avec un état "vide"
tache1=""
tache2=""
tache3=""
statut1="en attente"
statut2="en attente"
statut3="en attente"

# Fonction pour ajouter une tâche
ajouter_tache() {
    if [ -z "$tache1" ]; then
        echo "Entrez la description de la tâche 1 :"
        read tache1
        echo "Tâche 1 ajoutée."
    elif [ -z "$tache2" ]; then
        echo "Entrez la description de la tâche 2 :"
        read tache2
        echo "Tâche 2 ajoutée."
    elif [ -z "$tache3" ]; then
        echo "Entrez la description de la tâche 3 :"
        read tache3
        echo "Tâche 3 ajoutée."
    else
        echo "Vous avez déjà trois tâches. Impossible d'ajouter plus de tâches."
    fi
}

# Fonction pour afficher les tâches
afficher_taches() {
    echo "Liste des tâches :"
    if [ -n "$tache1" ]; then
        echo "1. $tache1 [$statut1]"
    else
        echo "1. Aucune tâche"
    fi

    if [ -n "$tache2" ]; then
        echo "2. $tache2 [$statut2]"
    else
        echo "2. Aucune tâche"
    fi

    if [ -n "$tache3" ]; then
        echo "3. $tache3 [$statut3]"
    else
        echo "3. Aucune tâche"
    fi
}

# Fonction pour marquer une tâche comme terminée
marquer_terminee() {
    echo "Quelle tâche souhaitez-vous marquer comme terminée (1, 2, ou 3) ?"
    read choix
    case $choix in
        1)
            if [ -n "$tache1" ]; then
                statut1="terminée"
                echo "Tâche 1 marquée comme terminée."
            else
                echo "La tâche 1 n'existe pas."
            fi
            ;;
        2)
            if [ -n "$tache2" ]; then
                statut2="terminée"
                echo "Tâche 2 marquée comme terminée."
            else
                echo "La tâche 2 n'existe pas."
            fi
            ;;
        3)
            if [ -n "$tache3" ]; then
                statut3="terminée"
                echo "Tâche 3 marquée comme terminée."
            else
                echo "La tâche 3 n'existe pas."
            fi
            ;;
        *)
            echo "Choix invalide."
            ;;
    esac
}

# Fonction pour afficher les statistiques (combien de tâches terminées et en attente)
afficher_statistiques() {
    total=0
    terminees=0

    if [ -n "$tache1" ]; then
        total=$((total + 1))
        if [ "$statut1" = "terminée" ]; then
            terminees=$((terminees + 1))
        fi
    fi

    if [ -n "$tache2" ]; then
        total=$((total + 1))
        if [ "$statut2" = "terminée" ]; then
            terminees=$((terminees + 1))
        fi
    fi

    if [ -n "$tache3" ]; then
        total=$((total + 1))
        if [ "$statut3" = "terminée" ]; then
            terminees=$((terminees + 1))
        fi
    fi

    echo "Statistiques :"
    echo "Tâches totales : $total"
    echo "Tâches terminées : $terminees"
    echo "Tâches restantes : $((total - terminees))"
}

# Menu principal avec switch case
menu() {
    echo "Que voulez-vous faire ?"
    echo "1. Ajouter une tâche"
    echo "2. Afficher les tâches"
    echo "3. Marquer une tâche comme terminée"
    echo "4. Afficher les statistiques"
    echo "5. Quitter"
    read choix

    case $choix in
        1)
            ajouter_tache
            ;;
        2)
            afficher_taches
            ;;
        3)
            marquer_terminee
            ;;
        4)
            afficher_statistiques
            ;;
        5)
            echo "Au revoir !"
            exit 0
            ;;
        *)
            echo "Choix invalide, réessayez."
            ;;
    esac
}

# Boucle principale pour afficher le menu en continu
while true; do
    menu
done
