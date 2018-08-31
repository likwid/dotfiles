if [[ `uname` == 'Linux' ]]
then
        export LINUX=1
        export GNU_USERLAND=1
else
        unset LINUX
fi

if [[ `uname` == 'Darwin' ]]
then
        export OSX=1
else
        unset OSX
fi

if [[ $LINUX == 1 ]]; then 
    export GOPATH=~/go
else
    export GOPATH=~/go
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

#export PATH=$PATH:$GOPATH:~/bin
if [[ -a /usr/local/bin/vim ]]; then
  export EDITOR=/usr/local/bin/vim
else
  export EDITOR=/usr/bin/vim
fi

