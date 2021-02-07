#! /bin/sh

read -p "Enter the number  = " num  

echo The number is $num 

rem=$((num%2))          # check if the nnumber is even 
if [ $rem -eq 0 ]
then 
echo Even
else 
echo Odd
fi

i=1
count=0

while [ $i -lt $num ]
do 
    # echo $i
    if [ $((num%i)) -eq 0 ]
    then 
    count=$((count+1))
    fi
    i=$((i+1))
done 

if [ $count -gt 1 ]  # checkint if the number is prime or not 
then 
echo "Not Prime" 
else 
echo "Prime" 
fi 

a=0
sum=0
temp=$num
echo $temp 

while [ $temp -gt 0 ]  # cecking if number is pallindrome or not
do 
    a=$(( temp%10 ))
    sum=$((sum*10 + a))
    temp=$((temp/10))
done 
# echo $sum
if [ $sum -eq $num ]
then 
echo "Pallindrome"
else
echo "Not pallindrome"
fi