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

x=10
y=20

if [$x -eq $y]; then
    echo both are equal
elif ["$x" -ne "$y"]; then
    echo both are not equal
elif ["$x" -le "$y"]; then
    echo X is less than or Equal to Y
elif ["$x" -lt "$y"]; then
    echo X is less than Y
elif ["$x" -gt "$y"]; then
    echo X is greater than Y
elif ["$x" -ge "$y"]; then
    echo X is greater than or equals to Y
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