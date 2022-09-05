#########################################################
# cheat sheet for git
#########################################################

#--------------------------------------------------------
#--------------------------------------------------------
git status

git add .
git commit -m "xxxxxxxxxxx"
git push


##Branch
git branch #Check 
git branch new-branch-name
git checkout new-branch-name

#Remote
git remote -v  #Check
git remote add origin https://github.com/UserName/ProjectName

git push origin new-branch-name
git push origin main


git reflog

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
# GitHub
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



