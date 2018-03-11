#!/bin/bash
func1 ()
{
cd $1
for i in `ls $1`
do
	var=${i##*.}
	if [ $var != "$i" ]
	then
		test -d $var
		if [ $? = 1 ]
		then
			mkdir $var
		
		fi
		mv $i $var
	fi
	
done
}
func1 $1
