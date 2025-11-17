# CLI Commands

***git Commands***
This repo is to show the git commands and the use of them
```
1.  git add . : it will add whole files you have changed 
2.  git add filename.txt : it will add specific file 
3.  git commit -m 'message' : this function will commit the change of your work
4.  git push : it will push your changes to your repo in github
5.  git push --set-upstream origin branchName : this will push your changes to specific branch
6.  git checkout -b branchName : this command will create new branch
7.  git checkout branchName: this command will switch between branch (branchName means the branch you have created)
8.  git branch : will display all the branches in the repo
9.  git checkout -d branchName : will delete the branch
10. git pull : is a git command that fetches changes from a remote repository and merges them into your current local branch. It's essentially a combination of two operations 
11. git merge : merge changes to the targeted branch from specific branch
12. git fetch : downloads the latest changes from the remote repository
```
***How to merge two branches***
1.  First: you need to switch to the branch that you want to merge data into it:

```git checkout branchNmae```

2.  Second: you need to pull all the data to the branch:

```git pull origin branchName```

3.  Third: you need to merge data from specific branch to your the trageted branch:

```git merge otherbranchName```

4.  Fourth: you need to commit your work and changes to targeted branch:

```git commit -m 'new update, by merge'```

5. Fifth: you need to push to the targeted branch:

```git push origin branchName```

***How to build image in docker***
1.  First: you nedd to create image in docker:

   ```docker build -t myimage .```

2. Second: you need tom set container and port directly:

```docker run -p 8080:8080 -d myimage:latest```

***Initializing react app with vite***
1.   First: You need to run next command then follow the steps with No:
   
```npm create vite@latest```

3.   Second: return th the project:
   
```cd project-name```

5.   Third: install the packages:
   
```npm install```

7.   Forth: run dev command:
   
```npm run dev```

***Aws commands - Terraform commands***
Configrations: 
- First you will need to install aws, then vault, then you will need to add IAM role, then you will need to add profile in your local machine by CLI: ```aws-vault add profilename-root``` , then you will need to add configrations for macOs: ```nano config```, for windows: ```notepad $env:USERPROFILE\.aws\config```.
- The configrations example:
  
```ini
[profile alsaidi-root]
mfa_serial=arn:aws:iam::536186750336:mfa/alsaidisoft
region=eu-west-2
credential_process=aws-vault exec alsaidi-root --json

[profile alsaidi-SaidWindows]
source_profile=alsaidi-root
include_profile=alsaidi-root
role_arn=arn:aws:iam::681090449514:role/c0197-dsa
region=eu-west-2
```


1.   To login:

```cd .aws``` - ```aws-vault exec alsaidi-SaidWindows```, then use windows authenticator to enter the password if he asked you.

2.   To init - plan - apply:

```terraform init``` - ```terraform plan``` - ```terraform apply```

3. Example of terraform inside aws folder.

# Remember: its important to do all commands in one console
CMD style of identifying stack_name, aws_region, state_bucket: 
```
set GIGS_STACK_NAME=test-2025-said
echo %GIGS_STACK_NAME%
set TF_VAR_gigs_stack_name = %GIGS_STACK_NAME%
echo %TF_VAR_gigs_stack_name
```
