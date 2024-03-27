#!/bin/bash 

read -p "Please enter your name: " fname

today=$(date +%k ) 

if [ "$today" -gt "12" ] 
then 
	 echo "Good Evening $fname!"

elif [ "$today" -lt "12" ] 
then 
	echo "Good Moring $fname!"

elif [ "$today" -lt "15" ] || [ "$today" -gt "12" ]; 
then 
       echo "Good Afternoon $fname!" 
fi 




