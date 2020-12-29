#!/bin/bash -x
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
