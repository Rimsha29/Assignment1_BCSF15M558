#!/bin/bash
unique ()
{
filename=$1

 
if [ $# -eq 0 ]
then
	echo "No file entered!"
	exit 1

fi
if [ -f $file ]
then
   
   unique=`sort $filename  | uniq -u  `
   echo $unique > $filename
fi
}
unique $1




