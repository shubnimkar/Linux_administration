#!/bin/bash
while true
do
echo "Welcome to Menu Operation"
echo "---------------------------"
echo "1. User Environment Details"
echo "2. Prepare Backup File"
echo "3. Delete Unwanted Files"
echo "4. Exit"

read -p "Enter desired operation:" var
       if [[ $var == 1 ]];
                    then 
 		          cat /home/hpcsa/Documents/user-file | awk -F:  '{print $1,$3,$6,$7}' 

       elif [[ $var == 2 ]];  
		    then 
			cd /home/hpcsa/Documents/sample_dir
			ls
		        read -p  "Enter filename to make backup:   " var2
		
  			cp --backup $var2 /home/hpcsa/Documents/sample_backup
                                if [[ $? == 0 ]];then
                                 
                                   echo "Your Backup is Completed"
                                 
                                else
				   echo "File doesn't Exist"
			   fi

       elif [[ $var == 3 ]];
                    then
			cd /home/hpcsa/Documents/sample_dir
			ls 
			read -p "Enter Filename to be deleted:    " del
                            rm $del 
			        if [[ $? == 0 ]];then 
			                  echo " $del File is deleted"
                                else
				 	  echo "File doesn't Exist : No file to delete"
				fi
			


       else [[ $var == 4 ]];
		echo "Menu Exited"
                    exit

       fi
done
