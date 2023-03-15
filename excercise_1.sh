#!/bin/bash

# controllo che venga passato il numero giusto di parametri
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 old_string new_string directory_name"
  exit 1
fi

# assegno gli argomenti a delle variabili per una più facile lettura del codice
old_string=$1
new_string=$2
directory=$3

# controllo che la directory passata sia effettivamente una directory con -d
if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a directory."
  exit 1
fi

for file in $(find "$directory" -type f); do
  sed -i "s/${old_string}/${new_string}/g" "$file"
done
