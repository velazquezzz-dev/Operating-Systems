:: This command is to create a new file.

ECHO "Hola Mundo."> mytext.txt

:: This command (TYPE) is to display the information inside the file.
TYPE mytext.txt

:: This command (MD) is to create a new directory.
MD Backup

:: This command (MOVE) is to move a file into a other directory.
MOVE mytext.txt Backup

:: This command (CD) is for entering the directory.
CD Backup

:: This command (DIR) is to list the elements inside the directory.
DIR /S

:: This command (DEL) is to delete a file.
DEL mytext.txt

:: This command is to go back.
CD..

:: This command (RMDIR) is to delete a directory.
RMDIR /S Backup