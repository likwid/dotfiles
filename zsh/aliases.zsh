# ansible
alias ap='ansible-playbook'
alias agx='ansible-galaxy'
alias av='ansible-vault'

# code and projects
alias code='~/Dropbox/Code'
alias gh='code && github.com'
alias me='gh && likwid'
alias bb='code && bitbucket.org/likwid'

# dotfiles shortcuts
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'

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
