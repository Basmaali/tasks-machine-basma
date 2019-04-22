#!/bin/bash
#while read li;
#do

#x+=("$li")
#done < test1

#y+= awk ' { print $5 } ' test1
#for ((i==0 ; i<=${#y[*]}; i++ ))
#do
#echo "${y[i]}"
#done


#for line in `awk ' { print $5 } ' test1`;
#do
#arr[$i]=$line
#i=`expr $i + 1`
#done

#echo ${arr[*]}
cut -d' ' -f5 test1 > f1

while read line;
do
y+=("$line")
done < f1
echo "array "
echo "${y[*]}"
