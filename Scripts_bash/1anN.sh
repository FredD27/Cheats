#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <nombre>"
    exit 1
fi

N=$1
somme=0

for (( i=1; i<=N; i++ )); do
    somme=$((somme + i))
done

echo "La somme des nombres de 1 à $N est $somme."
