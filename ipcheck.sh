#!/bin/bash
# Bash script to auto-verify Internet IP address changes using 'curl' and sends an email to a specified 
# address in case the address is found to be changed.
# Please add to crontab to run automatically.

# Please reset these variables 
export TMP_FILE_PATH=/tmp/ip.txt
export USER_NAME="Lovie"
export EMAIL_ADDRESS="lovie.minhas@gmail.com"

touch $TMP_FILE_PATH
export PUBLICIP=`curl ifconfig.me`
if [ $? -eq 0 ]
then
	export OLDIP=`cat $TMP_FILE_PATH`
	if [ "$OLDIP" != "$PUBLICIP" ]
	then
		echo "Hi $USER_NAME, Your public IP has has changed to $PUBLICIP, Regards Pi"|mail -s "New IP $PUBLICIP" $EMAIL_ADDRESS
		echo $PUBLICIP>/tmp/ip.txt
	else
		echo "No change to IP"
	fi
fi
