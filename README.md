# gitCommands
This repo is to show the git commands and the use of them

## Table of Contents
- [Configuration](#configuration)
- [Creating Repositories](#creating-repositories)
- [Basic Commands](#basic-commands)
- [Branching and Merging](#branching-and-merging)
- [Remote Repositories](#remote-repositories)
- [Inspection and Comparison](#inspection-and-comparison)
- [Undoing Changes](#undoing-changes)
- [Stashing](#stashing)
- [Tags](#tags)
- [Advanced Commands](#advanced-commands)

## Configuration

### `git config --global user.name "Your Name"`
Set the name that will be attached to your commits and tags.

### `git config --global user.email "your.email@example.com"`
Set the email address that will be attached to your commits and tags.

### `git config --global color.ui auto`
Enable helpful colorization of command line output.

### `git config --list`
List all configuration settings.

## Creating Repositories

### `git init`
Initialize a new Git repository in the current directory. Creates a `.git` subdirectory with all necessary repository files.

### `git clone <repository-url>`
Clone an existing repository from a remote server. Creates a local copy of the entire repository including all history.

### `git clone <repository-url> <directory>`
Clone a repository into a specific directory name.

## Basic Commands

### `git status`
Show the working tree status. Displays which files are staged, unstaged, and untracked.

### `git add <file>`
Add a file to the staging area, preparing it for commit.

### `git add .`
Add all modified and new files in the current directory to the staging area.

### `git add -A`
Add all changes (new, modified, and deleted files) in the entire working tree to the staging area.

### `git commit -m "commit message"`
Commit the staged changes with a descriptive message.

### `git commit -am "commit message"`
Add all modified tracked files to staging and commit them in one command.

### `git diff`
Show changes between working directory and staging area (unstaged changes).

### `git diff --staged`
Show changes between staging area and last commit (staged changes).

### `git rm <file>`
Remove a file from the working directory and stage the deletion.

### `git mv <old-path> <new-path>`
Move or rename a file and stage the change.

## Branching and Merging

### `git branch`
List all local branches. The current branch is marked with an asterisk.

### `git branch <branch-name>`
Create a new branch from the current commit.

### `git branch -d <branch-name>`
Delete a local branch (only if it has been merged).

### `git branch -D <branch-name>`
Force delete a local branch, even if it hasn't been merged.

### `git checkout <branch-name>`
Switch to a different branch.

### `git checkout -b <branch-name>`
Create a new branch and switch to it immediately.

### `git switch <branch-name>`
Modern command to switch branches (alternative to checkout).

### `git switch -c <branch-name>`
Create a new branch and switch to it (alternative to checkout -b).

### `git merge <branch-name>`
Merge the specified branch into the current branch.

### `git merge --no-ff <branch-name>`
Merge with a merge commit even if fast-forward is possible.

### `git rebase <branch-name>`
Reapply commits from current branch on top of another branch.

## Remote Repositories

### `git remote`
List all remote repositories.

### `git remote -v`
List all remote repositories with their URLs.

### `git remote add <name> <url>`
Add a new remote repository connection.

### `git remote remove <name>`
Remove a remote repository connection.

### `git fetch <remote>`
Download objects and refs from a remote repository without merging.

### `git fetch --all`
Fetch from all configured remote repositories.

### `git pull`
Fetch from remote and merge into current branch (fetch + merge).

### `git pull --rebase`
Fetch from remote and rebase current branch on top of upstream branch.

### `git push`
Push local commits to the remote repository.

### `git push <remote> <branch>`
Push a specific branch to a remote repository.

### `git push -u <remote> <branch>`
Push branch and set upstream tracking for future pushes/pulls.

### `git push --all`
Push all branches to the remote repository.

### `git push --tags`
Push all tags to the remote repository.

## Inspection and Comparison

### `git log`
Show commit history for the current branch.

### `git log --oneline`
Show commit history in compact format (one line per commit).

### `git log --graph`
Show commit history with an ASCII graph showing branch structure.

### `git log --all --graph --decorate --oneline`
Show detailed visual representation of all branches and commits.

### `git log -n <number>`
Show only the last N commits.

### `git log --author="<name>"`
Show commits by a specific author.

### `git log --since="2 weeks ago"`
Show commits from a specific time period.

### `git show <commit>`
Show details about a specific commit, including changes.

### `git blame <file>`
Show who last modified each line of a file and when.

## Undoing Changes

### `git restore <file>`
Discard changes in working directory (restore from staging).

### `git restore --staged <file>`
Unstage a file while keeping changes in working directory.

### `git checkout -- <file>`
Discard changes in working directory (older syntax).

### `git reset <file>`
Unstage a file while keeping changes in working directory.

### `git reset --soft HEAD~1`
Undo last commit but keep changes staged.

### `git reset --mixed HEAD~1`
Undo last commit and unstage changes (default behavior).

### `git reset --hard HEAD~1`
Undo last commit and discard all changes (dangerous!).

### `git revert <commit>`
Create a new commit that undoes changes from a specified commit.

### `git clean -fd`
Remove untracked files and directories from working directory.

## Stashing

### `git stash`
Temporarily save uncommitted changes and revert to clean working directory.

### `git stash save "message"`
Stash changes with a descriptive message.

### `git stash list`
List all stashed changes.

### `git stash pop`
Apply the most recent stash and remove it from stash list.

### `git stash apply`
Apply the most recent stash but keep it in stash list.

### `git stash apply stash@{n}`
Apply a specific stash from the list.

### `git stash drop`
Remove the most recent stash from the list.

### `git stash clear`
Remove all stashes.

## Tags

### `git tag`
List all tags in the repository.

### `git tag <tag-name>`
Create a lightweight tag at current commit.

### `git tag -a <tag-name> -m "message"`
Create an annotated tag with a message.

### `git tag <tag-name> <commit>`
Tag a specific commit.

### `git tag -d <tag-name>`
Delete a local tag.

### `git push <remote> <tag-name>`
Push a specific tag to remote repository.

### `git push <remote> --tags`
Push all tags to remote repository.

## Advanced Commands

### `git cherry-pick <commit>`
Apply changes from a specific commit to current branch.

### `git reflog`
Show reference log of HEAD changes (useful for recovering lost commits).

### `git bisect start`
Start binary search to find which commit introduced a bug.

### `git submodule add <repository> <path>`
Add a submodule to the repository.

### `git submodule update --init --recursive`
Initialize and update all submodules.

### `git archive --format=zip --output=file.zip <branch>`
Create an archive of files from a branch.

### `git shortlog -sn`
Show commit count by author.

### `git grep <pattern>`
Search for a pattern in tracked files.

### `git gc`
Cleanup unnecessary files and optimize local repository.

### `git fsck`
Verify the integrity of the Git file system.

---

## Quick Reference Guide

**Getting Started:**
```bash
git init                    # Initialize repository
git clone <url>             # Clone existing repository
git status                  # Check status
```

**Basic Workflow:**
```bash
git add <file>              # Stage changes
git commit -m "message"     # Commit changes
git push                    # Push to remote
git pull                    # Pull from remote
```

**Branching:**
```bash
git branch <name>           # Create branch
git checkout <name>         # Switch branch
git merge <name>            # Merge branch
git branch -d <name>        # Delete branch
```

**Undo Changes:**
```bash
git restore <file>          # Discard working changes
git reset HEAD~1            # Undo last commit
git revert <commit>         # Revert a commit
```

---

## Tips and Best Practices

1. **Commit Often**: Make small, focused commits with clear messages
2. **Pull Before Push**: Always pull latest changes before pushing
3. **Branch for Features**: Create separate branches for new features
4. **Write Good Commit Messages**: Use present tense and be descriptive
5. **Review Before Commit**: Use `git diff` to review changes before committing
6. **Keep .gitignore Updated**: Ignore build artifacts and sensitive files
7. **Use Tags for Releases**: Tag important commits like version releases
8. **Learn to Use Stash**: Useful for temporarily saving work in progress

---

For more information, visit the [official Git documentation](https://git-scm.com/doc).
