#! home/ubuntu
# File: guessinggame.sh

function question {
	echo "How many files are in the current directory:"
	read guess
}



number_of_file=$(pwd | ls | wc -l)


while [[ $guess -ne $number_of_file ]];
do
	question
	if [[ $guess -gt $number_of_file ]]
	then
		echo "Too High..."
	elif [[ $guess -lt $number_of_file ]]
	then
		echo "Too Low..."
	fi
	
done

echo "Congrats, correct answer!"


