#!/bin/bash

est_pair() {
    if [ $(($1 % 2)) -eq 0 ]; then
        return 0  # Succès (pair)
    else
        return 1  # Erreur (impair)
    fi
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 <nombre>"
    exit 1
fi

nombre=$1
est_pair $nombre

if [ $? -eq 0 ]; then
    echo "$nombre est pair."
else
    echo "$nombre est impair."
fi
