#!/bin/bash

# directory di cui si vuole contare i file di script
dir=$1

# Controllo se l'argomento è stato fornito
if [ $# -ne 1 ]; then
  echo "Usage: $0 dir"
  exit 1
fi

# verifico che la directory esista
if [ ! -d "$dir" ]; then
    echo "Directory not found: $dir"
    exit 1
fi

echo "countexec $dir:"

# conto i file di script e stampo a video l’interprete shebang di ciascuno di essi
find "$dir" -type f -print0 | xargs -0 awk '/^#!/{print $dir}' | uniq -c | sort -r
