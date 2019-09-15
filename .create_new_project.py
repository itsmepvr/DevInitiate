# Python3

import sys
import os
import pybase64
from github import Github

# Github username and access token
access_token = b'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
github_username = b'github-username'
username = pybase64.b64decode(github_username, altchars='_:', validate=True)
username = username.decode("utf-8")

access_token = pybase64.b64decode(access_token, altchars='_:', validate=True)
access_token = access_token.decode("utf-8")

def create():	
	user = Github(username, access_token).get_user()
	repo = user.create_repo("delete")
	print("Succesfully created repository {}".format("delete"))
	
if __name__ == "__main__":
	create()
