#!/bin/bash

read -p "Hello! Please enter your first and last name: " flname

sleep 1

read -p "Please enter your Student ID: " snumb

sleep 2

if [ $snumb = "1234" ] 
then 
	echo "Welcome $flname to your Virtual Machine." 
else 
	echo "Error, invalid Student ID. Please try again." 
fi 	
