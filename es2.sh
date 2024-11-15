#!/bin/bash

cd $HOME/Desktop
rm -rf HeadManipulationRepo

git init HeadManipulationRepo
cd HeadManipulationRepo

echo "Riga di prova" > A.txt
git add A.txt
git commit -m "Commit file A"

echo "Riga di prova" > B.txt
git add B.txt
git commit -m "Commit file B"

echo "Riga di prova" > C.txt
git add C.txt
git commit -m "Commit file C"

git checkout -b devTemp

echo "Modifica" > B.txt
git add B.txt
git commit -m "Modifica a file B"

git log --oneline --graph --all

git checkout master
git merge devTemp

git log --oneline --graph --all
git status

