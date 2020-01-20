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
   
   
   echo "import sys; sys.path.append('.') # Rajouter le repertoire courant" > .scripts/b${id}.spec.py
  
   echo "from b${id} import binary_search" >> .scripts/b${id}.spec.py
   echo "test = binary_search( [5,7,11,14,19,20,25], 11) == 2 " >> .scripts/b${id}.spec.py
   echo "if  test:" >> .scripts/b${id}.spec.py
   echo "     print(':tada: :tada: :tada:')" >> .scripts/b${id}.spec.py
   echo "else:" >> .scripts/b${id}.spec.py
   echo "     print(':stop: :stop: :bang:')" >> .scripts/b${id}.spec.py

done
