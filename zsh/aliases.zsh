# ansible
alias ap='ansible-playbook'
alias agx='ansible-galaxy'
alias av='ansible-vault'

# code and projects
alias mycode='~/Dropbox/Code'
alias gh='mycode && github.com'
alias me='gh && likwid'
alias dti='gh && dtinteractive'
alias ghe='mycode && ghe.coxautoinc.com'
alias gheme='ghe && jeff-gonzalez'
alias des='ghe && data-engineering-services'
alias ds='ghe && data-solutions'
alias wrk='mycode && github.dev.dealertrack.com'
alias inventory='wrk && inventory'
alias bb='mycode && bitbucket.org/likwid'

# dotfiles shortcuts
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias aliases="cat ~/.zsh/aliases.zsh"
alias exports="cat ~/.zsh/exports.zsh"

# common
alias ll='ls -la'
alias lh='ls -lah'
alias h='history'
alias jb='jobs -l'
alias mo='less'
alias epoch='date +%s'
alias vd='vagrant destroy -f'
alias vu='vagrant up'
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias mkdirp='mkdir -p'
alias maketermfast='sudo rm /private/var/log/asl/*.asl'

# git
alias glod='git log --graph --pretty="%Cgreen%h%Creset%Cblue%d%Creset %Cred%an%Creset: %s"'
alias gap='git add -p'
alias gpr='git pull --rebase'
alias reset-authors='git commit --amend --reset-author -C HEAD'
alias untrack='git update-index --assume-unchanged'
alias track='git update-index --no-assume-unchanged'

# Tmux
alias tml='tmux ls'
alias tmn='tmux new -s'
alias tma='tmux attach -t'

function devops_tmux_new {
  tmux -S /opt/tmux/$USER new
  chown $USER:devops /opt/tmux/$USER
}

function devops_attach {
  tmux -S /opt/tmux/$1 attach
}

function devops_ls {
  tmux -S /opt/tmux/$1 ls
}

alias dtmn=devops_tmux_new
alias dtml=devops_ls
alias dtma=devops_attach

# Secure mounting
alias mountsecure='hdiutil attach ~/Dropbox/Private/SecureVol/ > /dev/null && echo "SecureVol Mounted"'
alias unmountsecure='hdiutil eject /Volumes/Secure > /dev/null && echo "SecureVol Unmounted"'
alias securemount='mountsecure'
alias secureunmount='unmountsecure'

#Utility functions
function convert_pem_to_pub {
  ssh-keygen -y -f $1 > $2
}
alias pem2pub=convert_pem_to_pub

#Hitch for multiple git authors
hitch() {
  command hitch "$@"
    if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'
