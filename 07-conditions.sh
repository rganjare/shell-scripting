#!/bin/bash

# case and if are conditional commands , if command is widely because it has more options than case command.

# IF Condition
# If found in three forms

# Simple if

# if [ expression ]
# then
# commands
# fi

# If Else

# if [ expression ]; then
# commands
# else
# commands
# fi

# Else if

# if [ expression1 ] ; then
# commands
# elif [ expression2 ]; then
# commands
# elif [ expression3 ]; then
# commands
# else
# commands
# fi

# Expressions are important
# 1. String Tests
# Operators : == , != , -z
# 2. Number Tests
# Operators : -eq , -ne , -le , -lt , -gt, -ge
# 3. File Tests
# Operators
# -e -> to check file exists or not
# https://tldp.org/LDP/abs/html/fto.html


a="abc"
if [ "$a" == "abc" ]; then
  echo Both are equal
fi

if [ "$b" != "abc" ]; then
  echo "Both are not equal"
fi

if [ -z $b ]; then
  echo b variable is empty
fi

## One observation, I am using quotes for variables. And it is a best practice.

if [ "$a" == "abc" ]; then
  echo Both are equal
else
  echo "Both are not equal"
fi

test=10

echo print variable value "$test"

if [ $test -eq 10 ]; then
    echo both are equalllllll $test
elif [ $test -ne 5 ]; then
    echo both are not equalllllll
elif [ $test -le 5 ]; then
    echo X is less than or Equal to Y
elif [ $test -lt 7 ]; then
    echo X is less than Y
elif [ $test -gt 5 ]; then
    echo X is greater than Y
elif [ $test -ge 6 ]; then
    echo $test is greater than or equals to Y
else 
    echo conditional operator check     
fi

x="abc"
case $x in
  abc)
    echo x = abc
    ;;
  xyz)
    echo x = xyz
    ;;
  *)
    echo a is not either xyz or abc
    ;;
esac

## Frontend ##
# if [ $? -eq 0 ]; then
#    echo -e "\e[32m==>SUCCESS\e[0m"
# else
#   echo -e "\e[31m==>Failuer !!!\e[0m" 
#   exit 2
# fi