#!/usr/bin/env bash
# File: guessinggame.sh
function fun {
re='^[0-9]+$'
while :
do
	read var1
        if [[ $var1 =~ $re ]];then
             	break
        else
             	echo "$var1 is an invalid number, try again"
        fi
done
}
function toolow {                         
	echo "Too low, try again"
	fun
}
function toohigh {                         
	echo "Too high, try again"
	fun
}
num=$( ls | wc -l )
end=0
echo "Guess the number of files this directory has, not included the hidden files."
rv
while [[ $end -eq 0 ]]              
do
	if [[ $var1 -eq $num ]]     
	then
	echo "Congratulations! you guessed it."
	end=1
	elif [[ $var1 -gt $num ]]
	then
	toohigh
	elif [[ $var1 -lt $num ]]
	then
	toolow
	fi
done
