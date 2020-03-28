#!/bin/bash
# Assert arguments passed.
if [ -z "$1" ]
then
	exit
elif [ -z "$2" ]
then
	exit
fi
#Iterate through all files and subdirs of level 1.
for L1 in $(dir $1)
do
	#Test if file is a directory.
	if [[ -d $1/$L1 ]]
	then
		#Iterate through all files and subdirs of level 2.
		for L2 in $(dir $1/$L1)
		do
			#Test filename equality of L2 File.
			if [ $L2 == $2 ]
			then
				echo $1/$L1/$L2
			fi
		done
	#Test filename equality of L1 File.
	elif [ $L1 == $2  ]
	then
		echo $1/$L1 
	fi
done
