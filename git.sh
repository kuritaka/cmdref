#########################################################
# cheat sheet for git
#########################################################



#--------------------------------------------------------
#Branch
#--------------------------------------------------------
git branch # Check branch


### create branch and checkout with same time
git checkout main
git pull
git checkout -b feature/new-branch-name

### or create branch and checkout
git checkout main # move to main
git pull
git branch feature/new-branch-name
git checkout feature/new-branch-name



#
git rebase main


git add .
git commit -m "[update] #PR Number summary"


#Remote
git remote -v  #Check
git remote add origin https://github.com/UserName/ProjectName

git push origin feature/new-branch-name
or
git push origin main


git reflog


git checkout main
git branch  # branch list
git branch -D feature/new-branch  # delete branch


git pull origin main



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
git remote add origin https://github.com/kuritaka/command-cheatsheet.git
git push -u origin main

##…or push an existing repository from the command line
git remote add origin https://github.com/kuritaka/command-cheatsheet.git
git branch -M main
git push -u origin main



