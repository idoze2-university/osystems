#!/bin/bash
# Assert arguments passed.
if [ -z "$1" ]
then
	exit
fi
#Initialize line counter.
c=1
FOLDERS=()
#Iterate through all files and subdirs.
for f in $(ls $1)
do
	#Test if file is a directory.
	if [[ -d $1/$f ]]
	then
		FOLDERS+="$f "	
	else
		echo $c $f is a file
		#Increase counter
		((c++))
	fi
done

for f in $FOLDERS
do
	echo $c $f is a folder
	((c++))
done
