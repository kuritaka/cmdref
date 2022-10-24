#########################################################
# cheat sheet for git
#########################################################
exit


#--------------------------------------------------------
#Branch
#--------------------------------------------------------
git branch # check branch in local
git branch -r # (or git branch --remotes) # show remote branches
git branch -a # (or git branch --all) # show all branches both local and remote

### Method 1: create branch and checkout with same time
git checkout main
git pull
git checkout -b new-branch-name

### Method 2: create branch and checkout
git checkout main # move to main
git pull
git branch new-branch-name
git checkout new-branch-name


#
git rebase main


git staus
git add -A
git commit -m "[update] #PR Number summary"
or
git staus
git diff
git add -A
git diff --cached
git commit -m "[update] #PR Number summary"



#Remote
git remote -v  #Check
git remote add origin https://github.com/UserName/ProjectName

git push origin new-branch-name #push to new-branch-name
or
git push origin main #push to remote main, we don't recommend to use this.


git reflog


git branch  # branch list
git checkout main  # got to main branch
git branch -D new-branch  # delete branch


git pull origin main
or
git pull


#--------------------------------------------------------
#git diff
# I use git difftool (alias git dt) rather than git diff.
#--------------------------------------------------------
# Comparing files
git diff file   (or git diff HEAD file) # Comparing files

git diff --cached  file

git diff main new_branch  file # Comparing files from two branches


# Comparing branches
git diff branch1..other-feature-branch   # Comparing two branches

git diff SHA..other-SHA   # Comparing two branches


git diff --name-only


#--------------------------------------------------------
# Difference between local and remote branches
#--------------------------------------------------------
git fetch origin master

git diff --stat master origin/master
git diff --name-status master origin/master
git diff master origin/master

git log --oneline master origin/master
git log master origin/master



#--------------------------------------------------------
# Git Configuratioin
#--------------------------------------------------------
### Check Configuration  ###
cat ~/.gitconfig
git config --list


### Editor Settings ###
$ which vim
/usr/bin/vim
$ git config --global core.editor "/usr/bin/vim"
$ cat ~/.gitconfig

Windows
[core]
editor = P:/win-soft/free/cmder/cmder/vendor/git-for-windows/usr/bin/vim




#--------------------------------------------------------
# How to start GitHub
#--------------------------------------------------------
## create a new repository on the command line
echo "# command-cheatsheet" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/kuritaka/cmderf.git
git push -u origin main

##…or push an existing repository from the command line
git remote add origin https://github.com/kuritaka/cmdref.git
git branch -M main
git push -u origin main



