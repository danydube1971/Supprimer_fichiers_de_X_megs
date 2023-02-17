# Supprimer_fichiers_de_X_megs

Ce script Bash demande à l'utilisateur une limite de taille de fichier en mégaoctets, puis trouve tous les fichiers 
de plus de cette limite dans le répertoire courant et les stocke dans un tableau. 
Ensuite, le script demande à l'utilisateur de confirmer s'il veut déplacer ces fichiers dans la corbeille et, 
s'il répond par l'affirmative, les fichiers seront déplacés dans la corbeille.

Voici ce que fait chaque ligne du script :

1. La première ligne déclare que le script doit être exécuté dans l'interpréteur de commande Bash.
2. La deuxième ligne demande à l'utilisateur d'entrer une limite de taille de fichier en mégaoctets, puis stocke la réponse dans la variable "LIMIT".
3. La troisième ligne utilise la commande "find" pour trouver tous les fichiers de plus de $LIMIT mégaoctets dans le répertoire courant 
et les stocke dans la variable "files".
4. La quatrième ligne utilise une structure de contrôle "if" pour vérifier si des fichiers ont été trouvés. 
Si c'est le cas, le script demande à l'utilisateur de confirmer s'il veut déplacer ces fichiers dans la corbeille.
5. La cinquième ligne utilise une autre structure de contrôle "if" pour vérifier si l'utilisateur a confirmé. 
Si c'est le cas, le script utilise la commande "find" pour déplacer les fichiers dans la corbeille en utilisant la commande "trash-put".
6. Si aucun fichier n'a été trouvé dans le répertoire courant qui dépasse la limite de taille de fichier spécifiée, 
le script affiche un message pour informer l'utilisateur qu'aucun fichier n'a été trouvé.

En résumé, ce script Bash permet de trouver et de déplacer les fichiers qui dépassent une certaine limite de taille dans la corbeille, 
avec une confirmation de l'utilisateur avant la suppression.



