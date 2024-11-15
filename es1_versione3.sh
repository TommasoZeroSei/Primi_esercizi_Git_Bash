#!/bin/bash

cd $HOME/Desktop/
rm -rf repo_esercizio

mkdir repo_esercizio
cd repo_esercizio
git init

echo "Testo di prova" > README.md

git add README.md
read -p "Inserisci il messaggio del commit: " a
git commit -m "$a"
