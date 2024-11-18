#!/bin/bash

cd $HOME/Desktop
rm -rf mergeRepo
mkdir mergeRepo
cd mergeRepo
git init

touch fileA.txt fileB.txt fileC.txt

echo "Prima modifica su fileA.txt per C1" >> fileA.txt
git add fileA.txt
git commit -m "C1: Prima modifica su fileA.txt"

git log --oneline

git checkout -b Feature1
echo "Modifica su Feature1 per C2" >> fileB.txt
git add fileB.txt
git commit -m "C2: Modifica su fileB.txt in Feature1"

git log --oneline

git checkout main
git checkout -b Feature2
echo "Modifica su Feature2 per C3" >> fileC.txt
git add fileC.txt
git commit -m "C3: Modifica su fileC.txt in Feature2"

git log --oneline --decorate

git checkout main
git merge Feature1
git branch -d Feature1
git log --oneline --decorate --all
git status

git checkout -b Hotfix
echo "Correzione per Hotfix" >> fileA.txt
git add fileA.txt
git commit -m "Hotfix: Correzione su fileA.txt"

git checkout main
git merge Hotfix
git branch -d Hotfix
git log --oneline --graph --decorate --all
git status

git checkout main
git merge Feature2 -m "Risoluzione conflitti per Feature2"
# nano fileC.txt
# git add fileC.txt
# git commit -m "Risoluzione conflitti per Feature2"
git branch -d Feature2

git log --graph --oneline --decorate --all
echo "Script completato"
