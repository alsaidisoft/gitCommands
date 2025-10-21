# gitCommands
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
