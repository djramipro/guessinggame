#!/usr/bin/env bash

function ask_type {
  echo "Please, try again with another number and then type Enter:"
  read input
}

clear

echo "Hello, guess how many files are in the current directory."
echo "Please, type a number and then press Enter:"
read input

count=$(ls | wc -l)

while [[ $input -ne $count ]]
do

  if [[ $input -gt $count ]]
    then
      echo "Sorry, the number you have entered is higher."
    elif [[ $input -lt $count ]]
    then
      echo "Sorry, the number you have entered is lower."
    else
      echo ""
    fi

  ask_type

done
echo "Congratulations!. You've guessed the number of files :-)."
