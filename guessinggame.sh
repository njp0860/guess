#!/bin/bash
echo "Guess how many files are in the current directory...."
read guess
function game() {
	while [[ $guess -lt 5 || $guess -gt 5 ]]
	do
		if [ $guess -lt 5 ]; then
			echo "Guess again... (Hint: The number is higher than your previous guess)"
			read guess
		elif [ $guess -gt 5 ]; then
			echo "Guess again... (Hint: The number is lower than your previous guess)"
			read guess
		fi
	done
}
game "$guess"
if [ $guess == 5 ]; then
	echo "You got it right!"
fi
echo "exitting game"
echo "goodbye"
