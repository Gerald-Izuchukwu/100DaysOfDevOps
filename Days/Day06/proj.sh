#!/bin/bash

# The file names
#TODO Define all file names used for this project


# The file paths
#TODO Define all file paths here
# The globals
#TODO Define all global variables required
function enter_password(){
	read -p "Please Enter Your Password: " password 
}
# Time out periods
#TODO Define all timeout values here
timeout_time=10

function answer_file_creaton()
{
	#TODO create answer csv file. If its already exists create a back up
	if [ -f answer.csv ]
	then
		touch backUpAnswer.csv
	else
		touch answer.csv
	fi
}



function sign_in()
{
	# TODO For user sign-in
	# 1. Read all user credentials and verify
	# 2. Time-out for entering password
	# 3. Do appropriate activities to log files

	read -p "Please Enter Your Name: " name
	export -f enter_password
	timeout $timeout_time bash -c enter_password

	echo "Welcome $name"
	welcome

	# if [ !name ]
	# then
	# 	echo "this user is not registred, please sign up first"
	# 	#call sign_up
	# else
	# 	echo "Welcome $name."
	# fi

	#call another function
}

function welcome(){
	#this fucntion's purpose is simply to be called so the process will end
	echo "Welcome again"
}

sign_in