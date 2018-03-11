#!/bin/bash
even_odd ()
{
filename=$1

counter=1
efile="evenfile.txt"
ofile="oddfile.txt"

if [ ! -f $filename ]
then
	echo "not a file"
	exit 1
fi

while read line
do
	val=$( expr $counter % 2 )
	if [ $val -eq 0 ]
	then
		echo $line >>$efile
	else
		echo $line >>$ofile
	fi
counter=`expr $counter + 1 `

done < $filename
echo "done!"

}
even_odd $1
