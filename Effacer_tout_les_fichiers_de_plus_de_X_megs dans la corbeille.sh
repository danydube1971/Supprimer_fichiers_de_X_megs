#!/bin/bash

# Demander le nombre de mégaoctets à l'utilisateur
read -p "Entrez la limite de taille de fichier en mégaoctets : " LIMIT

# Trouver tous les fichiers de plus de $LIMIT mégaoctets
# dans le répertoire courant et les stocker dans un tableau
files=`find . -name "* *" -type f -size +${LIMIT}M -print`

# Vérifier si des fichiers ont été trouvés
if [ -n "$files" ]; then
  # Demander confirmation avant de supprimer les fichiers
  read -p "Etes-vous sûr de vouloir déplacer ces fichiers dans la corbeille? [y/n] " confirm

  # Vérifier si l'utilisateur a confirmé
  if [ "$confirm" = "y" ]; then
    # Déplacer les fichiers dans la corbeille.
    find . -name "* *" -type f -size +${LIMIT}M -exec trash-put {} \;
  fi
else
  # Aucun fichier trouvé
  echo "Aucun fichier de plus de $LIMIT Mo n'a été trouvé dans le répertoire courant."
fi

