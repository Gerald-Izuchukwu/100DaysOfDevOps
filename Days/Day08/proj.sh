#!/bin/bash
# timeout_time=2s

function authenticate(){
	read -p "Please Enter Your Password: " password 
	read -p "Please Enter Your Password Again: " password1
	if [ $password != $password1 ]
	then
		echo "Passwords do not match, try again"
	else
		echo "Password Saved"
		echo $password > password.txt 
	fi
}




function sign_in()
{
	echo "Sign In Page"
	read -p "Please Enter Your Name: " name
	read -p "Please ENter Your Password: " input_password

	# if [[ $input_password != password.txt]]
	# then
	# 	echo "Incorrect Name or password"
	# else
	# 	echo "Login Successful"
	# 	echo "Welcome $name"

	# fi 
	
}

function sign_up()
{
	
	echo "Sign Up Page"
	read -p "Please enter your Names: " full_name
	echo $full_name > name.txt
	authenticate
	echo "User Successfully Registered, Now SignIn"
	sign_in

}

sign_up