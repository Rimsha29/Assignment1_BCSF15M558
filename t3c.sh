#!/bin/bash
Is_user_exist ()
{
user=$1
grep "${user}:" /etc/passwd 1>out.txt
if [ $? -eq 0 ]
then
	echo "true! $user exist"
else
	echo "false! $user doesn't exist"
fi
}
Is_user_exist $1
