#!/bin/sh

NUMFILES=0
NUMMATCHES=0
if [ $# -ne 2 ]; then
	echo "Please call the script with two arguments"
	exit 1
elif [ ! -d $1 ]; then

	echo "$1 is not a directory on the file system"
	exit 1
else
	NUMFILES=$(find $1 -type f | wc -l)
	NUMMATCHES=$(grep -R $2 $1 | wc -l)
	echo "The number of files are ${NUMFILES} and the number of matching lines are ${NUMMATCHES}"
	exit 0
fi
