# Customize to your needs...
#

if [[ -z $LINUX && $LINUX -eq 1 ]]; then
    export GOPATH=~/src/golang
else
    export PACKER_CACHE_DIR='/Users/jgonzalez'
    export GOPATH=~/Dropbox/Code/go
    export JAVA_HOME="$(/usr/libexec/java_home)"
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
fi

export PATH=$PATH:$GOPATH:~/bin
