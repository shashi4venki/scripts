#!/bin/bash

add()
{
    echo -n "Enter any two or more arguments: "
    read args
    sum=0
    for i in $args
    do
        sum=$(($sum + $i))
    done
    echo "The Sum is: $sum"
}
prod()
{
    echo -n "Enter any two or more arguments: "
    read args
    prod=1
    for i in $args
    do
        prod=$(($prod * $i))
    done
    echo "The Product is: $prod"
}
sub()
{
    echo -n "Enter any two arguments: "
    read n1 n2
    diff=$(($n1 - $n2))
    echo "The Difference is: $diff"
}
div()
{
    echo -n "Enter any two arguments: "
    read n1 n2
    div=$(($n1/$n2))
    echo "The Division is: $div"
}
rem()
{
    echo -n "Enter any two arguments: "
    read n1 n2
    diff=$(($n1%$n2))
    echo "The Reminder is: $rem"
}
ans="yes"
while [ $ans == "yes" ]
do
    echo " The following choices are availabe: 
        1. Addition
        2. Product
        3. Substraction
        4. division
        5. Reminder "
    echo -n "Enter your choice: "
    read choice
    case $choice in
        1) 
            add
            ;; 
        2) 
            prod
            ;;
        3) 
            sub
            ;;
        4) 
            div
            ;;
        5) 
            rem
            ;;
    esac
    echo -n "Do you want to continue: (yes/no)"
    read ans
    ans=$(echo $ans | tr '[:upper:]' '[:lower:]')
done
