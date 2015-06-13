# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1_BAK=$PS1
source ~/.git-prompt.sh
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W\[\033[01;37m\]$(__git_ps1 "(%s)")\[\033[01;34m\] \$\[\033[00m\] '

alias ll='ls -al'
