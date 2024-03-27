#!/bin/bash 

generate_reports() {
	timedate=$(date)
	cpuinfo=$(lscpu)
	memory=$(free) 
	diskspace=$(df)
	
	read -p "Enter absloute path where you want to save report: " absopath
	sleep 1
	read -p "Enter file name for the report (without an extrention): " reportfile
	
	finalreport=$absopath/$reportfile.txt
	echo "See system*report.txt for full information."  

	echo "------- Report Header -------" >> $finalreport 
        sleep 1
	echo "Today is $timedate" >> $finalreport 
	echo "------ Report Details ------" >> $finalreport
	echo "CPU usage: $cpuinfo" >> $finalreport
	echo "Memory usage: $memory" >> $finalreport
	echo "Disk usage: $diskspace" >> $finalreport
	sleep 2
	echo "------- Report Footer -------" >> $finalreport
	sleep 1
	echo "This is the end of the system report. Run again to view current stats :-)" >> $finalreport
	 
}

generate_reports
generate_reports
