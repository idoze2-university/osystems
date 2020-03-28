#!/bin/bash
# Assert arguments passed.
if [ -z "$1" ]
then
	echo "Please provide a directory to list."
	exit
fi
#Initialize line counter.
c=1
#Iterate through all files and subdirs.
for f in $(dir $1)
do
	echo -n $c $f is a
	#Test if file is a directory.
	if [[ -d $1/$f ]]
	then
		echo ' directory'
	else
		echo ' file'
	fi
	#Increase counter
	((c++))
done
