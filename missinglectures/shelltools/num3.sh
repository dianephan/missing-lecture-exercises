#!/bin/sh

if [ -f log.txt ] 
then 
	rm log.txt
fi

while [ true ]
do
	VAR=$(sh faillog.sh)
	if [ $? == 1 ] 
	then
		echo $VAR >> log.txt
		command >out 2>&1  
		break 
	fi


done


