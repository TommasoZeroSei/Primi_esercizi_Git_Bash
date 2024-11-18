#!/bin/bash

cd $HOME/Desktop

rm -rf branchRepo
mkdir branchRepo
cd branchRepo
git init

touch file1.txt file2.txt file3.txt

echo "Prima modifica per C1" >> file1.txt
git add file1.txt
git commit -m "Prima modifica su file1.txt"

git checkout -b F1
echo "Modifica su F1 per C2 in file2.txt" >> file2.txt
git add file2.txt
git commit -m "C2: Modifica su file2.txt in F1"

git checkout main
echo "Modifica su main per C3" >> file3.txt
git add file3.txt
git commit -m "C3: Modifica su file3.txt su main"

git checkout -b F2
echo "Modifica su F2 per C4" >> file1.txt
git add file1.txt
git commit -m "C4: Modifica su file1.txt in F2"

git checkout main
echo "Modifica su main per C5" >> file2.txt
git add file2.txt
git commit -m "C5: Modifica su file2.txt su main"

git branch HF3
git branch HF4
git branch HF5

git checkout HF3
echo "Modifica su HF3 per C1" >> file1.txt
git add file1.txt
git commit -m "Commit 1 su HF3 in file1.txt"
echo "Modifica su HF3 per C2" >> file2.txt
git add file2.txt
git commit -m "Commit 2 su HF3 in file2.txt"
echo "Modifica su HF3 per C3" >> file3.txt
git add file3.txt
git commit -m "Commit 3 su HF3 in file3.txt"

git checkout HF4
echo "Modifica su HF4 per C1" >> file1.txt
git add file1.txt
git commit -m "Commit 1 su HF4 in file1.txt"
echo "Modifica su HF4 per C2" >> file2.txt
git add file2.txt
git commit -m "Commit 2 su HF4 in file2.txt"
echo "Modifica su HF4 per C3" >> file3.txt
git add file3.txt
git commit -m "Commit 3 su HF4 in file3.txt"
echo "Modifica su HF4 per C4" >> file1.txt
git add file1.txt
git commit -m "Commit 4 su HF4 in file1.txt"

git checkout HF5
echo "Modifica su HF5 per C1" >> file1.txt
git add file1.txt
git commit -m "Commit 1 su HF5 in file1.txt"
echo "Modifica su HF5 per C2" >> file2.txt
git add file2.txt
git commit -m "Commit 2 su HF5 in file2.txt"
echo "Modifica su HF5 per C3" >> file3.txt
git add file3.txt
git commit -m "Commit 3 su HF5 in file3.txt"
echo "Modifica su HF5 per C4" >> file1.txt
git add file1.txt
git commit -m "Commit 4 su HF5 in file1.txt"
echo "Modifica su HF5 per C5" >> file2.txt
git add file2.txt
git commit -m "Commit 5 su HF5 in file2.txt"

git checkout main
echo "REPO branchRepo CREATO"
git log --all --graph --oneline
