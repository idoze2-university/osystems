#!/bin/bash
#Assert arguments passed.
if [ -z "$1" ]
then
	echo 'Please provide a file to search in.'
	exit
elif [ -z "$2" ]
then
	echo 'Please provide a search word.'
	exit
fi
#Grep word in file and print line numbers, then use awk to print line number and number of words.
grep -n "$2" -w $1 | awk '{ print $0+0,NF }'

