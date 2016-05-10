# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
alias cdtc8logs='cd /usr/local/tomcat8/logs/'
alias sutom='sudo su - tomcat'
alias lessTail='less -NS +F'

export LESS="-NS"

PROMPT_COMMAND='PS1="\`if [[ \$? = "0" ]]; then echo "\\[\\033[34m\\]"; else echo "\\[\\033[31m\\]"; fi\`\h [\t]: $(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")>\[\033[0m\] "; echo -ne "\033]0;${USER}@${HOSTNAME} `pwd`\007" '
