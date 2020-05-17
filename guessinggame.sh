#!/bin/bash

filecount=$(ls -a | wc -l)

echo "Guess how many files are in the current directory...."
read guess

function game() {
	while [[ $guess -lt $filecount || $guess -gt $filecount || $((guess)) != $guess ]]
	do
		if [ $((guess)) != $guess ]; then
			echo "Sorry postive whole numbers only... try again"
			read guess
		elif [ $guess -lt $filecount ]; then
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
	echo "You got it Right!"
	echo "exitting game"
	echo "goodbye"
fi

#[[ -n ${input//[0-9]/} ]]; then
#[ $guess =~ ^[0-9]+$ ]; then
#[ $((guess)) != $guess ]; then
