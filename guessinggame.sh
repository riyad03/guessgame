#!/usr/bin/env bash

function guess_game(){
    actual_num=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess of the number of files: "
        read  user_guess
        if [ $user_guess -lt $actual_num ]
        then
            echo "Guess is lesser than the actual number of files. Try again!"
        elif [ $user_guess -gt $actual_num ]
        then
            echo "Guess is greater than the actual number of files. Try again!"
        else
            echo " Your guess is right! Congratulations!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory: "
guess
