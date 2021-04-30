#!/bin/bash

# This script checks if wlsunset is running, if it isn't, then it will start it. If it is already running, the script does nothing.


output1=$(ps -aux | grep "wlsunset$" | grep -v "grep wlsunset")

output2=$(printf "$output1" | wc -c)

#echo output1=
#echo $output1
#
#echo output2=
#echo $output2

if [ $output2 == 0 ]
     then wlsunset -l 45 -L 20
fi
