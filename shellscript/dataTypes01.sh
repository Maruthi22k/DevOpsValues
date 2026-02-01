#!/bin/bash

varibles=$@

num1=100
num2=maruthi

sum=$((num1+num2))
echo "sum is : $sum"

DATATYPE=(Maruthi,Anusha,SaiSidvik)
echo "Names are : $DATATYPE"

echo "all names are: ${DATATYPE[@]}"
echo "all names are: ${DATATYPE[*]}"
#echo "First Fruit is: ${FRUITS[0]}"
#echo "Second Fruit is: ${FRUITS[1]}"
#echo "Third Fruit is: ${FRUITS[2]}"