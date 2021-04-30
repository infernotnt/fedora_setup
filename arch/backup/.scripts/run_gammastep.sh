#!/bin/bash

# This script checks if gammastep is running, if it isn't, then it will start it. If it is already running, the script does nothing.


output1=$(ps -aux | grep "gammastep$" | grep -v "grep gammastep")

output2=$(printf "$output1" | wc -c)

#echo output1=
#echo $output1
#
#echo output2=
#echo $output2

if [ $output2 == 0 ]
     then gammastep
fi

exit
