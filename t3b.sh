#!/bin/bash
Is_root ()
{
	if [ $EUID -eq 0 ]
	then
		echo "true"
		exit 1
	
	else
		echo "false"
	fi
}
Is_root
