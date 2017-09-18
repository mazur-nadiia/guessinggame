success=false
let actual_n_of_files="$(ls -l | wc -l)"
let actual_n_of_files=$actual_n_of_files-1

number_check() 
{
	if [[ $1 -gt $2 ]]
	then
		echo "Entered number is bigger then actual number of files in directory."
	elif [[ $1 -lt $2 ]]
	then
		echo "Entered number is smaller then actual number of files in directory."
	else
		echo "You win!"
		let success=true
		break
	fi
}

while [ !$success ] 
do
	echo "How many files are there in directory?"
	read file_number
	number_check $file_number $actual_n_of_files
done

