# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# hub
if which hub > /dev/null; then eval "$(hub alias -s)"; fi

# jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Pyenv
[ -f ~/.pyenv_profile ] && source ~/.pyenv_profile

# nvm
[ -s ~/.nvm_profile ] && source ~/.nvm_profile
