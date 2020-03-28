#!/bin/bash
#Assert arguments passed.
if [ -z "$1" ]
then
	exit
elif [ -z "$2" ]
then
	exit
fi
#Grep word in file and print line numbers, then use awk to print line number and number of words.
grep -n "$2" -w $1 | awk '{ print $0+0,NF }'

