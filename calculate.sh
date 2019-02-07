#!/bin/sh

touch calc.log
sudo chmod 775 calc.log
CONTINUE="y"
while [ $CONTINUE = "y" ]; do
     echo Enter first number
     read first
     echo Enter second number
     read second
     echo Enter operation
     read operation
     result=`expr $first "$operation" $second`
     echo "$(tput setaf 1)$first$(tput sgr0) $operation $(tput setaf 1)$second$(tput sgr0) = $(tput setaf 1)$result$(tput sgr0)"
     echo "$first $operation $second = $result" >> calc.log
     echo Enter q to close programm or y to start again
     read choice
     CONTINUE=$choice
 done

