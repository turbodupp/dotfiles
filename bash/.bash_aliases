## Haugi's Aliases
alias supdate='sudo pacman -Syy'
alias supgrade='sudo pacman -Syu'
alias please='sudo $(fc -nl -1)'
alias cls='clear'
alias ic='ibmcloud'
alias wttr='curl wttr.in/Hamar'
alias rchat='ssh haugi@40.113.116.174 -i popos'
alias tellus="ssh -D 8081 e217638@sshgw-east.cosng.net"
alias d="kitty +kitten diff"
unalias gd
alias gd="git difftool --no-symlinks --dir-diff"
alias kubectl-del-evicted="kubectl get po -A | grep Evicted | awk "{system ("kubectl -n " $1 " delete po " $2)}""
