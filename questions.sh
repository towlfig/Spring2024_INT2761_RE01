#!/bin/bash

#Welcome the user to the Question Script
echo "Welcom to the Questionnaire v1.0"
sleep 1
echo "Created by $(whoami) on $(date)"
sleep 1
echo "You will be prompted to answer several questions"
sleep 1
echo "Let's Begin!"
sleep 1
echo "-------------Start Questions-----------"
sleep 1 

#Q1
read -p "What is your favorite color?"  color
sleep 1
#Q2
read -p "What is your favorite activity?"  activity 
sleep 1 

#Q3 
read -p "What is your favorite pizza topping?"  pizza
sleep 1

echo "-----------End of Questions-----------"
sleep 1

echo "-------Formulating Results----------"
sleep 3 

#Results with basic logic 
if [ $color = Blue ]
then 
	echo "Your favorite color is $color. Did you know $color is the most popular color!"
elif [ $color = "Pink" ]
then 
	echo "Your favorite color is $color. Did you know $color is the second most popluar!" 
elif [ $color = "Green" ] 
then 
	echo "Your favorite color is $color. It's made by mixing blue and yellow!"
else 
	echo "Your favorite color is $color. Cool!!"
fi
sleep 1


if [ $activity = "Reading" ]
then 
	echo "Your favorite activity is $activity. You must know a lot stuff!"
elif [ $activity = "Swimming" ] 
then 
	echo "Your favorite activity is $activity. You must like the beach!"
elif [ $activity = "Gardening" ] 
then 
	echo "Your favorite activity is $activity. You must have a green thumb!"
else 
	echo "Your favorite activity is $activity. Super cool!!" 
fi
sleep 1 

if [ $pizza = "Cheese" ] 
then 
	echo "Your favorite pizza topping is $pizza. Keep it simple!" 
elif [ $pizza = "Pepperoni" ] 
then 
	echo "Your favorite pizza topping is $pizza. Classic!" 
elif [ $pizza = "Peppers" ] 
then 
	echo "Your favorite pizza topping is $pizza. Eat your veggies!" 
else 
	echo "Your favorite pizza toppping is $pizza. Get creative!!" 
fi 
sleep 1

echo "--------Thanks for answering :^)-------"
