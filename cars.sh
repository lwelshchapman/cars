#!/bin/bash
# cars.sh
# Logan Welsh

clear

keepAsking=1

while [ "$keepAsking" -eq 1 ]
do
	echo "Type a number and press ENTER to select one of the following options:"
	echo "1. Enter a new car."
	echo "2. Display the list of cars."
	echo "3. Quit the program."
	read -r choice
	case "$choice" in
		"1")
			echo "Adding a new car..."
			
			echo "Year: "
			read -r year
			echo "Make: "
			read -r make
			echo "Model: "
			read -r model
			
			echo "$year:$make:$model" >> My_old_cars
			
			echo "...Done adding new car!" ;;
		
		"2")
			echo "Displaying cars list..."
			
			sort -n My_old_cars
			
			echo "...Done displaying cars list!" ;;
		
		"3")
			echo "Exiting. Goodbye!"
			keepAsking=0 ;;
		
		*)
			echo "Sorry, I didn't understand that." ;;
	esac

done
			
