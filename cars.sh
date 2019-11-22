#! /bin/bash
# cars.sh
# *JACK PAULY*
# 11.22.19

quit=0
#input="/cars/My_old_cars"



while [ "$quit" -eq 0 ]
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to exit the program"
	read SEL
	if [ "$SEL" -eq 1 ]
	then
		echo "What year is the car?"
		read YEAR
		echo "What company is the car from?"
		read COMP
		echo "What make is the car?"
		read MAKE
		NEWCAR=$YEAR:$COMP:$MAKE
		echo "$NEWCAR" >> My_old_cars
		echo added "$NEWCAR"
	fi
	if [ "$SEL" -eq 2 ]
	then
		sort My_old_cars
		echo My_old_cars
	fi
	if [ "$SEL" -eq 3 ]
	then
		echo "Goodbye!"
		quit=3
	fi
done
