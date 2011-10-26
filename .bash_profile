# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export GROOVY_HOME=/usr/local/groovy
export GRADLE_HOME=/usr/local/gradle
export PATH=$PATH:$HOME/bin:$HOME/git/scripts:$GROOVY_HOME/bin:$GRADLE_HOME/bin
export FIGNORE=$FIGNORE:CVS:CVS/:*/CVS:*/CVS/

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

export EC2_HOME=~/.ec2
export EC2_PRIVATE_KEY=$EC2_HOME/pk-4SZROY3ITUCMGJSVSZWNZ5SKROPFO5V3.pem
export EC2_CERT=$EC2_HOME/cert-4SZROY3ITUCMGJSVSZWNZ5SKROPFO5V3.pem
