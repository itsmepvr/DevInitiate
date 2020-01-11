#!/bin/bash

function createNew(){
	if [ -z $1 ]
	then    
		echo -n 'Please provide name of the project : '
		read projectName	  	
	else
		projectName=$1
	fi
	if [ -z $2 ]
	then
		echo -n 'Please provide type of the project: Python-py, Javascript-js, Bash-b : '
		read projectType
	else
		projectType=$2
	fi
	if [ "$projectType" == "py" ]
	then
		projectType="Python"
	elif [ "$projectType" == 'js' ]
	then
		projectType="Javascript"
	elif [ "$projectType" == "b" ]
	then
		projectType="Bash"
	else
		echo 'Usage: create_new [project name] [project type - py or js or b]'
	fi
	echo 'Project Name : "$projectName"'
	echo 'Project Type : "$projectType"'
	cd
	echo 'into the home directory...'
	cd Documents/Projects/$projectType/
	if [ ! -d $projectName ] 
	then
    		mkdir -p $projectName
	fi
	echo 'project folder created in home...'
	cd $projectName
	echo 'into the project folder...'
	echo -n 'Do you want to add this project to your Github..? (y/n) : '
	read githubDecision
	if [ "$githubDecision" == "y" ]
	then	
		cd 	
		python3 .create_new_project.py $projectName $projectType
		echo 'Repository created in Github with name $projectName'
		cd Documents/Projects/$projectType/$projectName
		git init
		echo 'git initialisation...'
		touch README.md
		echo 'readme file created...'
		git add .
		echo 'files added to git...'
		git commit -m 'First Commit'
		echo 'commit to git...'
		git remote add origin https://github.com/itsmepvr/$projectName.git
		echo 'git remote url set...'
		git remote -v
		echo 'new remote url verified...'
		git push origin master
		echo 'git push...'
	fi
	echo 'Done'
	code .	
	echo 'Successfully created project'
}