#!/bin/bash

cd $HOME/Desktop/
rm -rf MergeRepo

git init MergeRepo
cd MergeRepo

for i in {1..3}; do
echo "Testo prova" > "file$i.txt"
git add "file$i.txt"
git commit -m "Commit file$i"
done

git checkout -b featureA
echo "Modifica featureA" > file2.txt
git add file2.txt
git commit -m "Modifica featureA"

git checkout main
git checkout -b featureB
echo "Modifica featureB" > file2.txt
git add file2.txt
git commit -m "Modifica featureB"

git log --oneline --graph --all

git checkout main
git merge featureA
git branch -d featureA

git merge featureB
nano file2.txt
git add file2.txt
git commit -m "Merge featureB -> main"
git branch -d featureB

git log --oneline --graph --all
