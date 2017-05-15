# Customize to your needs...
#

if [[ $LINUX == 1 ]]; then 
    export GOPATH=~/src/golang
else
    export GOPATH=~/Dropbox/Code
    # export JAVA_HOME="$(/usr/libexec/java_home)"
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

#export PATH=$PATH:$GOPATH:~/bin
if [[ -a /usr/local/bin/vim ]]; then
  export EDITOR=/usr/local/bin/vim
else
  export EDITOR=/usr/bin/vim
fi
