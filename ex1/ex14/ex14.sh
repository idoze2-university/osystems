#!/bin/bash
# Assert arguments passed.
if [ -z "$1" ] 	#Name to search - $1.
then
	exit
elif [ -z "$2" ]#Bank-log file path - $2.
then
	exit
elif [  ! -f "$2" ]
then
	exit
fi

#Iterate through all file lines
while IFS= read -r entry
do
	#Iterate all relevant entries
	entry=$(echo "$entry" | grep -w "$1")
	if [ ! -z "$entry" ]
	then
		echo "$entry"	#Print the entry
		exists_flag=1	#Set exists flag to true.
		#Get the value in the entry using regex. (xargs trims whitespaces)
		value=$(echo $entry | grep -oP '\s-?\d{4}' | xargs)
		balance=$(($balance + $value)) #Increase the balance
	fi
done < "$2" #Run the following iteration on provided file.
if [ -z "$exists_flag" ]
then
	exit
else
	echo "Total balance: $balance"
fi


