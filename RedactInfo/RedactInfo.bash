#!/bin/bash
#this bash file invokes the sed script that redacts the text file inputted
for file in "$@"; do	#in this for loop, it will replace the date and modify the file with the sed script
	sed -i -e "s/<dstamp>/ $(date "+%m-%d-%Y")/g" $file
	sed -i -f redacted.sed $file
done	#end for loop
