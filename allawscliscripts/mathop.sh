#!/bin/bash

### Arithmetic Operations ###

a=30
b=8
add=$((a+b))
echo Sum of a and b is $add
sub=$((a-b))
echo Subtraction of a and b is $sub
mul=$((a*b))
echo Product of a and b is $mul
div=$((a/b))
echo Division of a and b is $div
mod=$((a%b))
echo Remainder when a is divided by b is $mod
((++b))
echo Increment operator when applied on "b" results into b=$b
((--a))
echo Decrement operator when applied on "a" results into a=$a
#########
