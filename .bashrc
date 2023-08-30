# prepend `$(__git_ps1 "(%s)")` in your PS1 definition to get branch name show up in bash prompt
PS1='$(__git_ps1 "(%s)")${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# history file config
HISTSIZE=10000
HISTFILESIZE=200000
HISTTIMEFORMAT="[%d/%m/%Y %r] %t"

# ==============
# tlhousa custom
# ==============
alias cod="cd ~/code"
alias cls="clear"
alias cdu="cd .."
alias gitc='git commit -m'
alias gits='git status'
alias gitl='git log'
alias gita='git add -u'
alias gitd='git diff'
alias gitb='git branch --sort=-committerdate'
alias gitp='git pull'
alias gitch='git checkout'
#alias glog='git log --graph --oneline --decorate'
alias glog='git log --graph --pretty=format:"%Cgreen%ad%Creset %C(auto)%h%d %s %C(bold black)<%aN>%Creset" --date=relative -20'
alias branch='git rev-parse --abbrev-ref HEAD'

# grep from history ignoring case
greph () {
    #fc -ln 1000 | grep --color=auto $1 | awk '!seen[$0]++' | sed -e 's/^/>> /'
    history | grep -i $1
}

# grep files content matching string in a directory tree
grepr() {
    grep -nri $1
}

# grep filenames matching string in a directory tree
grepf() {
    find . -name "*$1*" | grep $1
}
