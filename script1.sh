#!/bin/sh 

echo  "WELCOME TO  BACKUP PROGRAM " 
read  -p "Enter 3 DIR OR FILES TO ZIP " dir1 dir2 dir3
echo "$dir1 $dir2  $dir3"
date=$(date)
output="$date-$dir1-$dir2-$dir3.zip"
zip "$output"  $dir1 $dir2 $dir3
cp  "$output"  /var/backups/
rm "$output"
echo $output
