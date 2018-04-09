README: guessinggame.sh
	chmod a+w README.md
	echo "# The Guessing Game" > README.md
	echo -n "README.md was updated on: " >> README.md
	date >> README.md
	echo -n "The file guessinggame.sh contains the following number of lines: " >> README.md
	wc -l < guessinggame.sh >> README.md
	chmod a-w README.md
