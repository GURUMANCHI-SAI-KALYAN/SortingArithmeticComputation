#!/bin/bash -x
read -p "enter first number" a
read -p "enter second number" b 
read -p "enter third number" c
Arth[0]=$((a+b*c))
Arth[1]=$((a*b+c))
Arth[2]=$((c+a/b))
Arth[3]=$((a%b+c))
echo ${!Arth[@]}
