#!/bin/bash

tache1=""
tache2=""
tache3=""
statut1=""
statut2=""
statut3=""

####### FONCTIONS ########

ajouter_tache() {
  if [ -z "$tache1" ]; then
    echo "Entrez le titre de la tache 1"
    read tache1
    echo "> Tache 1 ajoutée!"
  elif [ -z "$tache2" ]; then
    echo "Entrez le titre de la tache 2"
    read tache2
    echo "> Tache 2 ajoutée!"
  elif [ -z "$tache3" ]; then
    echo "Entrez le titre de la tache 3"
    read tache3
    echo "> Tache 3 ajoutée!"
  else 
    echo "Impossible d'ajouter + de taches"
  fi
}

definir_terminee() {
  echo "Quelle tache doit être définie comme terminée? (1/2/3)"
  read choix
  case $choix in
    1)
      statut1="terminée"
      ;;
    2)
      statut2="terminée"
      ;;
    3)
      statut3="terminée"
      ;;
    *)
      echo "Choix invalide"
      ;;
  esac
}

afficher_taches() {
  echo "Liste des taches :"
  if [ -n "$tache1" ]; then
    echo "1. $tache1 [$statut1]"
  else
    echo "1. Aucune tache"
  fi

  if [ -n "$tache2" ]; then
    echo "2. $tache2 [$statut2]"
  else
    echo "2. Aucune tache"
  fi

  if [ -n "$tache3" ]; then
    echo "3. $tache [$statut3]"
  else
    echo "3. Aucune tache"
  fi
}

#######################

# Fonction: afficher menu
menu() {
  echo "Qu'est-ce que vous voulez faire ?"
  echo "1. Créer une tache"
  echo "2. Liste des taches"
  echo "3. Marquer une tache comme terminée"
  echo "4. Quitter"
  read choix
  case $choix in
    1)
	ajouter_tache
	;;
    2)
	afficher_taches
	;;
    3)
	definir_terminee
	;;
    4)
	echo "Au revoir"
	exit 0
	;; 
    *)
	echo "Erreur, recommencez"
	exit 1
	;;
  esac
}

while true; do
  menu
done
