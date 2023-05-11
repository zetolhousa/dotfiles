# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/thejazet/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# https://stackoverflow.com/questions/61433167/zsh-detects-insecure-completion-dependent-directories
ZSH_DISABLE_COMPFIX="true"
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gls="gls --color=auto --group-directories-first -X -1"
alias cls="clear"
alias cdu="cd .."
alias not="cd ~/Desktop/myStuff/notes"
alias cod="cd ~/Desktop/myStuff/code"
alias gitc='git commit -m'
alias gits='git status'
alias gitl='git log'
alias gita='git add -A'
alias gitd='git diff'
alias gitb='git branch'
alias gitp='git pull'
alias gitch='git checkout'
alias glog='git log --graph --oneline --decorate'
alias glog20='git log --all --graph --pretty=format:‘%Cgreen%ad%Creset %C(auto)%h%d %s %C(bold black)<%aN>%Creset’ --date=relative -20'

alias myc="ssh thejazet.aka.corp.amazon.com" #dev-dsk-thejazet-1b-42de7a1e.eu-west-1.amazon.com"
alias pfwd="ssh -N -L 2009:localhost:2009"
alias nds="ninja-dev-sync"
alias bb="brazil-build"
alias bp="brazil-path"
alias bbc="brazil-build clean"
alias bbg="brazil-build generate"
alias auth="mwinit && kinit"
alias valid="ssh-keygen -L -f ~/.ssh/id_rsa-cert.pub" # checks validity of midway cookie
alias ssa='eval "$(ssh-agent)" && ssh-add ~/.ssh/id_rsa'
alias cmds="cat ~/Desktop/myStuff/notes/cmds.md"

# alias pfwd="ssh -N -L 2009:localhost:2009 -L 5090:localhost:5090 dev-dsk-thejazet-1b-cb930869.eu-west-1.amazon.com"
# alias twork="tmux rename-session work && tmux neww -n notes && tmux neww -n CLOUD && tmux neww -n remote && tmux neww -n code"
alias twork="sh ~/twork.sh"

# https://w.amazon.com/bin/view/MacImprovement/ZSH
######################### zsh options ################################
setopt ALWAYS_TO_END           # Push that cursor on completions.
setopt AUTO_NAME_DIRS          # change directories  to variable names
setopt AUTO_PUSHD              # push directories on every cd
setopt NO_BEEP                 # self explanatory
######################### history options ############################
setopt EXTENDED_HISTORY        # store time in history
setopt HIST_EXPIRE_DUPS_FIRST  # unique events are more usefull to me
setopt HIST_VERIFY             # Make those history commands nice
setopt INC_APPEND_HISTORY      # immediatly insert history into history file
HISTSIZE=16000                 # spots for duplicates/uniques
SAVEHIST=15000                 # unique events guaranteed
HISTFILE=~/.history

setopt INTERACTIVE_COMMENTS     # make cli comments possible

cw () {
    cd /Users/thejazet/workplace/$1
}

start () {
    auth
    ssa
}

greph () {
    fc -ln 0 | grep --color=auto $1 | awk '!seen[$0]++' | sed -e 's/^/>> /'
    #history -n 1000 | grep $1
}

grepr () {
    grep -nri $1 *
}

colors () {
    for COLOR in {1..255}; do
        echo -en "\e[38;5;${COLOR}m"
        echo -n "${COLOR} "
    done
}

#https://gist.github.com/premek/6e70446cfc913d3c929d7cdbfe896fef
mv() {
  if [ "$#" -ne 1 ] || [ ! -e "$1" ]; then
    command mv "$@"
    return
  fi

  read -ei "$1" newfilename
  command mv -v -- "$1" "$newfilename"
}

# going up directories
u () {
   set -A ud
   ud[1+${1-1}]=
   cd ${(j:../:)ud}
}

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$HOME/.toolbox/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
export PATH="/usr/local/opt/curl-openssl/bin:$PATH"
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"
