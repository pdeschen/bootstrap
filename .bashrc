# .bashrc

# User specific aliases and functions

JAVA_HOME=/usr/java/default
PATH=$PATH:$JAVA_HOME/bin/

HISTFILESIZE=1000000000
HISTSIZE=1000000

alias ll='ls -al'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias vi='vim'
alias sh='bash'

GROOVY_HOME=/usr/local/groovy
GRAILS_HOME=/usr/local/grails

PATH=$PATH:$HOME/bin:$HOME/git/scripts:$GROOVY_HOME/bin:$GRAILS_HOME/bin

#Hack for bug with ssh agent...
# https://bugs.launchpad.net/ubuntu/+source/openssh/+bug/201786
export SSH_AUTH_SOCK=0

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/git/scripts/git-completion.sh ]; then
	. ~/git/scripts/git-completion.sh
fi

#export LANG=en_US

host=$(uname -n)
if [ "${TERM}" = "xterm" -o "${TERM}" = "xterm-color" ]
then
   if [ -z "${BASH}" ]
   then
      echo "\033]2;${host}\007\033]1;${host}\007"
   else
      export PROMPT_COMMAND='echo -ne "\033]2;${host}:${PWD}\007\033]1;@${host}:${PWD}\007"'
   fi
fi

