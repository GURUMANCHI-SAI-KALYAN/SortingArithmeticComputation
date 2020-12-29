#!/bin/bash -x
max=1000
read -p "enter first number" a
read -p "enter second number" b 
read -p "enter third number" c
Arth[0]=$((a+b*c))
Arth[1]=$((a*b+c))
Arth[2]=$((c+a/b))
Arth[3]=$((a%b+c))
array[0]=${Arth[0]}
array[1]=${Arth[1]}
array[2]=${Arth[2]}
array[3]=${Arth[3]}
echo ${array[@]}
for (( i=0 ;i<4;i++ ))
do
  for (( j=$((i+1));j<4;j++))
  do
	if [[ $((array[$i])) -le $((array[$j])) ]]
	then
		temp=${array[$i]}
		array[$i]=$((array[$j]))
		array[$j]=$temp
	fi
done
done
echo ${array[@]}
