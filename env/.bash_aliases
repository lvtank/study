
export PS1="\[\033[0;37m\][\u@\h \t \w]\[\033[00m\] "
#export PS1="\[\033[0;35m\][\u@\h \t \w]\[\033[00m\] "

set -o vi
export TERM=xterm
export EDITOR=vi

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000
# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

h() {
    _bash_history_sync
    #builtin history "$@"
}

_bash_history_sync() {
    builtin history -a
    HISTFILESIZE=$HISTFILESIZE
    builtin history -c
    builtin history -r
}
export PROMPT_COMMAND=_bash_history_sync

alias c=clear
alias l='ls -lh'
alias la='ls -a'
alias ll='ls -la'
alias lr='ls -lrt'
alias psof='ps -ef | grep -v grep | grep '
alias finda='find . -name '
alias vin='vim -u NONE'

alias cd.='cd ../'
alias cd..='cd ../../'
alias cd...='cd ../../../'
alias cd....='cd ../../../../'
alias cd.....='cd ../../../../../'
alias sd='echo $PWD > ~/.oldpwd'
alias ds='cd `cat ~/.oldpwd`'
alias sd1='echo $PWD > ~/.oldpwd1'
alias ds1='cd `cat ~/.oldpwd1`'
alias sd2='echo $PWD > ~/.oldpwd2'
alias ds2='cd `cat ~/.oldpwd2`'
alias sd3='echo $PWD > ~/.oldpwd3'
alias ds3='cd `cat ~/.oldpwd3`'

