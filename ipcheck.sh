#!/bin/bash

touch /tmp/ip.txt
export PUBLICIP=`curl ifconfig.me`
if [ $? -eq 0 ]
then
	export OLDIP=`cat /tmp/ip.txt`
	if [ "$OLDIP" != "$PUBLICIP" ]
	then
		echo "Hi Lovie, Your public IP has has changed to $PUBLICIP, Regards Pi"|mail -s "New IP $PUBLICIP" lovie.minhas@gmail.com
		echo $PUBLICIP>/tmp/ip.txt
	else
		echo "No change to IP"
	fi
fi
