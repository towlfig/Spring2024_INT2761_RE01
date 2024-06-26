#!/bin/bash

#Welcome
echo "Welcome to Directory Storage Utilization Report Tool." 
sleep 1
echo " V 1.0"
sleep 1
echo "Created by Tara Hordatt" 
sleep 1 
echo "-------------Start Report Generation------------"
sleep 1 

#Define Report and File Details
read -p "Enter the directory the you want to generate a report for: " dirReport
sleep 1
read -p "Enter the absolute path where you wan to save the report: " absoPath
sleep 1
read -p "Enter desired file name for the report (without an extention): " reportFile
sleep 1
#define full path and file name for final report
finalReport=$absoPath/$reportFile.txt

#Generate Report
echo "---------Report Header--------" 
echo "This report was generated by $(whoami)" >> $finalReport
echo "This report was generated on $(date)" >> $finalReport
echo "---------Report Details------" >> $finalReport
sudo du -sh $dirReport >> $finalReport

if [ $? = 0 ]; then 
	echo "Report Generation was succesful. Your report is located here: $finalReport";echo "---------Report Complete---------" >> $finalReport
else 
	echo "Error Occured during file generation. Please try again."
fi
