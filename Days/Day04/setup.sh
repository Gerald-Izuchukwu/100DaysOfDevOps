#!/bin/bash

input=$1

if [ "$1" == "Start" ]
then
	if [ -f server.js ]
	then 
		echo "Server file already exists, running building command"
		npm run build
	else
		npm init -y		
		npm i express
		touch server.js
		cp app.js server.js
		node server.js

	fi
elif [ "$1" == "Stop" ]
then
	echo "Session End Initiated"
	# find . -type f -not -name '*sh' -delete	
	GLOBIGNORE=*.sh:*.md
	rm -rv *
	unset GLOBIGNORE
	echo "This session has come to an end. Run Start to start the process again"

fi







