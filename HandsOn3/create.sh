#!/bin/bash

#This command is to create a new file.
echo "Hola mundo." > mytext.txt

#This command (cat) is to display the information inside the file.
cat mytext.txt

#This command (mkdir) is to create a new directory.
mkdir Backup

#This command (mv) is to move a file into another directory.
mv mytext.txt Backup/

#This command (cd) is for entering the directory.
cd Backup

#This command (ls) is to list the elements inside the directory.
ls -R

#This command (rm) is to delete a file.
rm mytext.txt

#This command is to go back.
cd ..

#This command (rm -r) is to delete a directory.
rm -r Backup
