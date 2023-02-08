#!/bin/bash

input=$1

if [ "$1" == "Start" ]
then
	#read -p " :: " 
	#echo $1 $2
	if [ -f server.js ]
	then 
		echo "Server file already exists, running building command"
		npm run build
	else
		npm init -y		
		npm i express
		touch server.js
		printf "express mongoose dotenv\n" >> dependencies.txt
		printf "const express = require('express')\nconst app = express()\napp.listen(3600, ()=>{\n    console.log('server is running on port 3600')\n})\n" >> server.js	
		node server.js
		read -p "Do you want to stop the server? y or n" input
#		if [ "$input" == "y"]
#		then

	fi
elif [ "$1" == "Stop" ]
then
	echo "This session has come to an end. Run Start to start the process again"
	rm -rf dependencies.txt node_modules/ package.json package-lock.json server.js 

fi







