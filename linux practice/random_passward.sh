#!/usr/bin/env sh

echo  -e "Enter how many charector passward do you want? : \c"
read pass

for ((n=0;n<$pass;n++))

do
	 dd if=/dev/urandom count=1 2> /dev/null | uuencode -m - | sed -ne 2p | cut -c-$pass

done
