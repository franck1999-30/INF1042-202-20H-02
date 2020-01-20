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

   python ${id}.py


   echo "\`\`\`"
   echo "###  =[END]============== Exécution du script ${id} =============== "

done
