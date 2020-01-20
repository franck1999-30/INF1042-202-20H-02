#!/bin/sh

# --------------------------------------
#
#
#
# --------------------------------------

source ../.scripts/students.sh --source-only

echo "# Corrections au `date +"%d-%m-%Y %H:%M"`"

for id in "${ETUDIANTS[@]}"
do

   echo "\n## Etudiant ${id} "
   echo "###  =[BEGIN]============== Exécution du script ${id} =============== "
   echo "\`\`\`"

   python b${id}.py


   echo "\`\`\`"
   echo "###  =[END]============== Exécution du script ${id} =============== "
   
   
   echo "import sys; sys.path.append('.') # Rajouter le repertoire courant" > .scripts/${id}.spec.py
  
   echo "from b300098957 import binary_search" >> .scripts/${id}.spec.py
   echo "test = binary_search( [5,7,11,14,19,20,25], 11) == 2 " >> .scripts/${id}.spec.py
   echo "if  test:" >> .scripts/${id}.spec.py
   echo "     print('Good')" >> .scripts/${id}.spec.py
   echo "else:" >> .scripts/${id}.spec.py
   echo "     print('Bad')" >> .scripts/${id}.spec.py

done
