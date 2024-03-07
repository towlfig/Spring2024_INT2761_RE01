#!/bin/bash

#Welcome
echo "Welcome to MySQL DB Backup Script v1.0"
sleep 1
echo "This script will back up a MySQL DB of your choice" 
sleep 1
echo "------------Gathering Deatils------------"

#Backup Deatials 
read -p "Enter the name of the MySQL DB you wish to backup: " dbBackup
sleep 1
read -p "Enter absolute path where you would like to save your backup file: " absoPath
sleep 1
read -p "Enter name of backup file (without extention): " backupFile
sleep 1 

#Create final backup location and time
finalBackup="$absoPath/$backupFile-$(date +%Y-%m-%d_%H-%M-%S).sql"

#Prompt UName and PWD
read -p "Enter username for MySQL: " usrName
sleep 1
read -s -p "Enter password for MySQl: " psswd
sleep 1

#DB Backup
sudo mysqldump -u $usrName -p$psswd $dbBackup > $finalBackup

#Validation and Error Check
if [ $? = 0 ]; then 
	echo "Backup successful. Your backup file is located here: $finalBackup"
else 
	echo "Error occured. Please try again."
fi
