#!/bin/bash

# The file names
#TODO Define all file names used for this project


# The file paths
#TODO Define all file paths here
# The globals
#TODO Define all global variables required
# Time out periods
#TODO Define all timeout values here
timeout_time=2s

function authenticate(){
	read -p "Please Enter Your Password: " password 
	read -p "Please Enter Your Password Again: " password1
 
	# if [ password != password1 ]
	# then
	# 	echo "Passwords do not match, try again"
	# else
	# 	echo "Password Saved"
	# fi
}

function authenticate1(){
	read -p "Please Enter Your Password: " password 
    #check if password inputed is the same as the one saved in the db
}

# function answer_file_creaton()
# {
# 	#TODO create answer csv file. If its already exists create a back up
# 	if [ -f answer.csv ]
# 	then
# 		touch backUpAnswer.csv
# 	else
# 		touch answer.csv
# 	fi
# }



function sign_in()
{
	

	echo "Sign In Page"
	read -p "Please Enter Your Name: " name
	authenticate1
	echo "Welcome $name"


}

function sign_up()
{
	# TODO For user sign-up
	# 1. Read all user credentials and verify
	# 2. Time-out for entering password
	# 3. Set minimum length and permitted characters for username and password, prompt error incase not matching
	# 4. Check for same user name already exists.
	# 5. Do appropriate activities to log files

	echo "Sign Up Page"
	read -p "Please enter your Names: " full_name
	authenticate
	# export -f authenticate
	# timeout $timeout_time bash -c authenticate
	echo "User Successfully Registered, Now SignIn"
	sign_in

}

sign_up