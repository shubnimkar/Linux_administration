#!/bin/bash
read -p "Enter file to read: " var
  cd /home/hpcsa/Documents/
  
sed -i $'s/\t/    /g' $var
  cd -
