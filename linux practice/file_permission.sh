#!/bin/bash

echo -e "Enter the file name : \c"
read file_name

if [ -f $file_name ];then
	if [ -w $file_name ];then
		echo "Append a data in a file.To quit press ctrl+d."
#		cat >> $file_name
	else
		echo "the file do not have write permissions."
	fi
else
	echo " $file_name not exists."
fi
