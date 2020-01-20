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

   python .scripts/b${id}.spec.py

   echo "###  =[END]============== Exécution du script ${id} =============== "
   
   
done
