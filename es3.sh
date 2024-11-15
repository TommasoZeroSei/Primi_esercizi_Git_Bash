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
git commit "Modifica featureA"

git checkout -b featureB
echo "Modifica featureB" > file2.txt
git add file2.txt
git commit "Modifica featureB"

git log --oneline --graph --all

git checkout master
git merge featureA
git merge featureB


