#!/bin/sh
writefile=$1
writestr=$2
if [ $# -ne 2 ]; then
	echo "Please call the script with two arguments"
	exit 1
else
	filename=$(basename "$1")
	parentdir=$(dirname "$1")
        mkdir -p $parentdir
	echo $writestr > $writefile
	exit 0
fi
