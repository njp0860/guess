readme : guessinggame.sh
	touch README.md
	echo "Title: Guessing Game"
	echo "\nDate make ran at:" >> README.md
	date >> README.md
	echo "\nNumber of lines of code:" >> README.md
	cat guessingame.sh | wc -l >> README.md
