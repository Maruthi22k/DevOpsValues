#!/bin/bash

varibles=$@

num1=100
num2=maruthi

sum=$((num1+num2))
echo "sum is : $sum"

DATATYPE=(Maruthi,Anusha,SaiSidvik)
echo "Names are : $DATATYPE"

echo "all names are: ${DATATYPE[@]}"
echo "all names using * : ${DATATYPE[*]}"
echo "all names are: ${DATATYPE[#]}"
echo "First Fruit is: ${DATATYPE[0]}"
echo "Second Fruit is: ${DATATYPE[1]}"
echo "Third Fruit is: ${DATATYPE[2]}"