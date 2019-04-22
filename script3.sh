#!/bin/bash
while read line;
do
	array+=("$line")
done < test

#for ((i==0 ;i<=${#array[*]};i++ ))
#do
#	echo "${array[i]}"
#done

#echo "array done"
for ((j==0 ;j<=${#array[*]};j++ ))
do
	if [[ ${array[j]} == *in* ]]
	then
		if [[ ${array[j+1]} == *password* ]]
    		then
			if [[ ${array[j+2]} == *off* ]]
			then
           			echo "${array[j]}" >>test1
           			echo "${array[j+1]}" >> test1
           			echo "${array[j+2]}" >> test1
       			 fi
   		 fi
	fi
done

cut -d' ' -f5 test1 > f1
while read li;
do
	y+=("$li")
done < f1

while read v;
do
	te+=("$v")
done < test1

echo "array test"
echo "$te[*]}"
echo -n length
echo "${#y[*]}"

for ((x==0 ;x<=${#y[*]};x=x+3 ))
do
echo "x=$x"
	if [[ $x == ${#y[*]} ]]
	then
		break
	fi
	if [[ ${y[x]} == ${y[x+1]} ]]
	then
		if [[ ${y[x+1]}  == ${y[x+2]} ]]
		then
			echo True
			echo "${y[x]}" "${y[x+1]}" "${y[x+2]}"
			echo "${te[x]}"
			echo "${te[x+1]}"
			echo "${te[x+2]}"
			echo "----------------------------------------------------------"
		else
			echo False
		fi
#	else 
#		echo False
#		echo "${y[x]}" "${y[x+1]}" "${y[x+2]}"
#		echo "${te[x]}" 
#		echo "${te[x+1]}" 
#		echo "${te[x+2]}"
	fi
done
rm test1 f1
