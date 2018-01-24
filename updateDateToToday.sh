#!/bin/sh

if [ "$1" = "" -o "$2" = "" ]; then
	echo "Usage: $0 day_num file"
	exit
fi
#echo $1
#echo $2

cur_day=`date +%Y%m%d` 

#old_ystday=`date --date="yesterday" +%Y%m%d`
#old_2dayago=`date --date="2 days ago" +%Y%m%d`
#old_3dayago=`date --date="3 days ago" +%Y%m%d`
#echo $old_ystday&$old_2dayago&$old_3dayago

old_daysago=`date --date="$1 days ago" +%Y%m%d`
#echo $old_daysago
#echo $cur_day

sed "s/$old_daysago/$cur_day/g" $2 > $2'.temp'
chmod --reference=$2 $2'.temp'
mv $2'.temp' $2
#echo "s/$old_daysago/$cur_day/g"
#sed 's/20110602/20110603/g' $2
