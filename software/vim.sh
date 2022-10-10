###################################################
# cheat sheet for vim
###################################################
exit

#--------------------------------------------------
#set command
#--------------------------------------------------
:set paste

:colorscheme xxxxx

:set ft=cisco
:set ft=junos


#--------------------------------------------------
# vimdiff (vim -d)
#--------------------------------------------------
Ctrl-W Ctrl-W    # vimdiff for change panel

dp  #vimdiff to merge (diff put)
do  #vimdiff to mgerge (diff obtain)


#--------------------------------------------------
# Netrw
#--------------------------------------------------
mb          Bookmark
qb          Check Bookmark list
<Num>qb     cd Directory


#--------------------------------------------------
# Use .vimrc or .vim outside the home directory
#--------------------------------------------------
alias vim='vim -u /home/xxxx/xxxx/.vimrc'

#.vimrc
set runtimepath+=/home/xxxx/xxxx/.vim
