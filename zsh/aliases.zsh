# ansible
alias ap='ansible-playbook'
alias agx='ansible-galaxy'
alias av='ansible-vault'

# code and projects
alias code='~/Dropbox/Code'
alias gh='code && github.com'
alias me='gh && likwid'
alias dti='gh && dtinteractive'
alias cox='code && ghe.coxautoinc.com'
alias wrk='code && github.dev.dealertrack.com'
alias inventory='wrk && inventory'
alias bb='code && bitbucket.org/likwid'

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

# Tmux
alias tml='tmux ls'
alias tmn='tmux new -s'
alias tma='tmux attach -t'

# Secure mounting
alias mountsecure='hdiutil attach ~/Dropbox/Private/SecureVol/ > /dev/null && echo "SecureVol Mounted"'
alias unmountsecure='hdiutil eject /Volumes/Secure > /dev/null && echo "SecureVol Unmounted"'
alias securemount='mountsecure'
alias secureunmount='unmountsecure'
