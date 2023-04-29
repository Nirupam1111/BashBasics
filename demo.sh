#!/usr/bin/bash

echo hello world!


# variables


FIRST_NAME=Nirupam
LAST_NAME=Sur
echo hello, $FIRST_NAME $LAST_NAME


# user input


echo What is your first name?
read FIRST_NAME
echo What is your last name?
read LAST_NAME
echo hello, $FIRST_NAME $LAST_NAME


# positional arguments


echo hello, $1 $2


# piping


ls -l /usr/bin | grep bash


# I/O redirection


echo Hello World. > hello.txt              #insert
echo how are u. >> hello.txt               #append
cat hello.txt

wc -w hello.txt                #word count with file name
wc -w < hello.txt             #word count

cat << EOF                                      #it will wait for the user input and will show in shell
EOF
wc -w <<< "hello how are u"             #it will show number of words in the given string


# test operators


[ hello = hello ]
echo $?                          #'$?' means execute the previous code. if equal retuns 0 else 1.


# if-else


if [ ${1,,} = nirupam ]; then                                #'${1}' is 1st positional argument, ,, is used to ignore case
	echo "You're the boss here. Welcome!"
elif [ ${1,,} = help ]; then
	echo "Just enter your username, duh!"
else
	echo "I don't know who you are. But you're not the boss of me!"
fi


# case statement


case ${1,,} in
	nirupam | sur)
		echo "Hello, you're the boss here!"
		;;                                            #like break
	help)
		echo "Just enter your username!"
		;;
	*)
		echo "Hello there. You're not the boss of me. Enter a valid username!"
esac


# Arrays


ARRAY=(10 20 30 40 50)
echo $ARRAY                          #print first element
echo ${ARRAY[@]}                 #print all elements
echo ${ARRAY[2]}                 #print given index element


# for loop


for item in ${ARRAY[@]}
do echo $item
done


# functions


Arr=(1 2 3)
func(){
    local Arr=(4 5 6)
    for item in ${Arr[@]}
    do echo $item
    done
}
func
for item in ${Arr[@]}
do echo $item
done
