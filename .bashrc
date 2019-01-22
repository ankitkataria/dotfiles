export CLICOLOR=1
export LANG="en_US.UTF-8"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias md=". mydisk"
alias ll="ls -alh"

export EDITOR="vim"
export SVN_EDITOR="vim"


if [ -x /usr/bin/dircolors ]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Adds NodeJS path
# export PATH=$PATH:/usr/local/nodejs/bin

# Adds NVM path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# SCM Breeze
# [ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# Colorized Prompt
BLACK="\[\033[0;30m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
LGRAY="\[\033[0;37m\]"
DGRAY="\[\033[1;30m\]"
LBLUE="\[\033[1;34m\]"
LGREEN="\[\033[1;32m\]"
LCYAN="\[\033[1;36m\]"
LRED="\[\033[1;31m\]"
LPURPLE="\[\033[1;35m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
NOCOLOR="\[\033[0m\]"

git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

virtual_env() {
  if [ $VIRTUAL_ENV ]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}

# Soliah ZSH PS1 cloned
function cool_prompt {
  export PS1="$(virtual_env)${BLUE}\u ${NOCOLOR}on ${RED}\h ${NOCOLOR}in ${BLUE}\w ${NOCOLOR}\$(git_branch)\n\$ ${NOCOLOR}" 
}

PROMPT_COMMAND=cool_prompt

# For Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
# source /usr/local/bin/virtualenvwrapper.sh

# For handling bare git repo for dotfiles
alias config='/usr/bin/git --git-dir=/home/kataria/.cfg/ --work-tree=/home/kataria'
alias dbundle='/home/kataria/work/opensource/bundler/bin/bundle'

# fzf for fuzzy history search

# bash history 

# to append history rather than truncating it
shopt -s histappend

HISTFILESIZE=1000000
HISTSIZE=1000000

# ignoring commands that start with space or are duplicates
HISTCONTROL=ignoreboth:erasedups

HISTIGNORE='ls:bg:fg:history'

# storing multi line commands in a single line
shopt -s cmdhist

# storing bash history after every command
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# half typed reverse searches

# aliases
alias yt-dl='youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" --metadata-from-title "%(artist)s - %(title)s" --add-metadata'

# Improving TAB completion 

bind 'TAB':menu-complete

# Display a list of the matching files if ambiguous
bind "set show-all-if-ambiguous on"

# only start cycling full results on the second Tab press
bind "set menu-complete-display-prefix on"

[ -s "/home/kataria/.scm_breeze/scm_breeze.sh" ] && source "/home/kataria/.scm_breeze/scm_breeze.sh"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
