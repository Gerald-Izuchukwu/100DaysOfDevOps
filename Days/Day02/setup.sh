#!/bin/bash

if [ -f server.js ]
then 
	echo "Server file already exists, running building command"
else
	npm init -y
	touch server.js
	printf "const express = require('express')\nconst app = express()\napp.listen(3600, ()=>{\n    console.log('server is running')\n})\n" >> server.js	
fi




