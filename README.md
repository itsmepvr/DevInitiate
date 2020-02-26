# Automate Project Creation

Automate the boring stuff of creating a project with one line of command.
* Creates a project folder in specified parent folder.
* Create repository in github with the project name.
* Opens the project in vscode editor.  

### Install: 
```bash
git clone "https://github.com/itsmepvr/automate-project-creation.git"
cd automate-project-creation
source ~/create-new-project.sh
Then go to create-new-project.sh and set the default path for project folder.
Add your github username and access token in .create_new_project.py
```

### Usage:
```bash
To run the script type in 'createNew'
(or)
To run the script type in 'createNew <project name> <project type>'
* Ex : createNew myFirstProject py 
* y/n to add project to Github
```
* Python     - py
* Javascript - js
* Bash       - b

## Built With

* Bash Script
* Python

## licensed

This project is licensed under the MIT License

## Authors

* **Venkata Ramana P** - [itsmepvr](https://itsmepvr.github.io)
