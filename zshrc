# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

if [[ `uname` == 'Linux' ]]
then
        export LINUX=1
        export GNU_USERLAND=1
else
        export LINUX=
fi

if [[ `uname` == 'Darwin' ]]
then
        export OSX=1
else
        export OSX=
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="likwid"
ZSH_THEME="robbyrussell"

source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/exports.zsh

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew httpie)

source $ZSH/oh-my-zsh.sh

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# hub
if which hub > /dev/null; then eval "$(hub alias -s)"; fi

# jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Enable autocompletes
source /usr/local/share/zsh/site-functions/_aws
source /usr/local/share/zsh/site-functions/_tig
source /usr/local/share/zsh/site-functions/_lein

# vim bindings on shell
# bindkey -v

fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -U compinit && compinit

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
