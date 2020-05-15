#!/bin/bash

filecount=$(ls -1 | wc -l)

echo "Guess how many files are in the current directory...."
read guess

while ! [[ $guess =~ ^[0-9]+$ ]]
do
    echo "Sorry integers only... try again"
read guess
done

function game() {
	while [[ $guess -lt $filecount || $guess -gt $filecount ]]
	do
		if [ $guess -lt $filecount ]; then
			echo "Guess again... (Hint: The number is higher than your previous guess)"
			read guess
		elif [ $guess -gt $filecount ]; then
			echo "Guess again... (Hint: The number is lower than your previous guess)"
			read guess
		fi
	done
}

game "$guess"
if [ $guess == $filecount ]; then
	echo "You got it right!"
fi

echo "exitting game"
echo "goodbye"


