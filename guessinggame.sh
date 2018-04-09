#!/usr/bin/env bash
# File: guessinggame.sh 

num_files=$(ls -1 | wc -l)

function advise {

if [[ $response -gt $num_files ]]
then
        advice="high"
elif [[ $response -lt $num_files ]]
then
        advice="low"
fi
}

echo "Do you know how many files are there in the current directory? Type your guess:"
read response

while [[ $response -ne $num_files ]]
do
	advise
	echo "Your guess is too $advice. Try again."
	read response
done

echo "Congrats! You found out the number of files in the current directory."
