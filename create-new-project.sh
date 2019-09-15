#!/bin/bash
# Date : Sep 15-2019
# Created by : Venkata Ramana P (github/itsmepvr)
# Bash Script to automate project creation
# Command : createNew
# (or)
# Command : createNew {project name} {project type} 

function createNew(){
    echo 'project creation started...'
	if [ -z $1 ]
	then    
		echo 'Please provide name of the project : '
		read projectName	  	
	else
		projectName=$1
	fi
	if [ -z $2 ]
	then
		echo 'Please provide type of the project: Python-py, Javascript-js, Bash-b'
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
        return 0
	fi
	echo 'Project Name : '$projectName
	echo 'Project Type : '$projectType
	cd
	echo 'into the home directory...'
    # Provide default path to your projects directory where you want to create project
    cd Documents/Projects
    	if [ ! -d $projectType ] 
	then
    		mkdir -p $projectType
            echo 'project parent folder with name "'$projectType'" created'
	fi
	cd $projectType/
	if [ ! -d $projectName ] 
	then
    		mkdir -p $projectName
            echo 'project folder with name "'$projectName'" created'
	fi
	cd $projectName
	echo 'into the project folder...'
	echo 'Done'
	code .	
	echo 'Successfully created project'
}
