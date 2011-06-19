# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="clean"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
#plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
if [ -f ~/.dotfiles/bash/aliases ]; then
    . ~/.dotfiles/bash/aliases
fi

#export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export JRUBY_OPTS=--1.9

# fixing problem with [] and . in rake task args
alias rake='noglob rake'
#alias pgstart='pg_ctl -D /usr/local/var/postgres -l logfile start'

# putting rvm current in prompt
PS1="
%{$fg[red]%}\$(~/.rvm/bin/rvm current)%{$reset_color%}
$PS1"

unsetopt auto_name_dirs

# path
export PATH="$HOME/bin:$HOME/.bin:$PATH"

# load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
