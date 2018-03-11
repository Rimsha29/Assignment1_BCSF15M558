#!/bin/bash
Is_lower ()
{
#filename=$1
$1=filename
if [ ! -f $filename ]
then
	echo "$filename doesn't exist"
	exit 1
fi
echo "DIsplaying file in lowercase: "
tr '[A-Z]' '[a-z]' < $filename
}
echo -n "Enter file name:"
read filename
Is_lower $1

