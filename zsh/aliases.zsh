# ansible
alias ap='ansible-playbook'
alias agx='ansible-galaxy'
alias av='ansible-vault'

# code and projects
alias code='~/Dropbox/Code'
alias gh='code && github.com'
alias me='gh && likwid'
alias hgn='gh && healthagentech'
alias commerce='hgn && wellmatch_commerce'
alias zs='gh && ZavalaSystems'
alias bb='code && bitbucket.org/likwid'
alias gsati='me && gsati-core'
alias ofac='me && ofac'

# dotfiles shortcuts
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias ea='vim $DOTFILES/zsh/aliases.zsh'
alias ef='vim $DOTFILES/zsh/functions.zsh'
alias ex='vim $DOTFILES/zsh/exports.zsh'

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
