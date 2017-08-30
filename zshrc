# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme to load
ZSH_THEME="duffx"

# wildcard mv files
# Ex. 
# zmv -w 'orderPlacedMessage*' 'spreeOrderMsg$1'
autoload zmv

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# plugins to load
plugins=(vi-mode git zsh-syntax-highlighting history-substring-search autojump node npm)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# vim as default editor
export EDITOR='vim'

# no shared history between windows – I usually have lik 5 tabs open in different directories
setopt no_share_history

# fixing behavior of up and down arrow keys with vim-mode
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ctrl-p and ctrl-n for history, ctrl-r for history search
bindkey "^P" up-line-or-history
bindkey "^N" down-line-or-history
bindkey '^r' history-incremental-search-backward

# tab key lists files in current directory
function expand-or-complete-or-list-files() {
    if [[ $#BUFFER == 0 ]]; then
        BUFFER="ls "
        CURSOR=3
        zle list-choices
        zle backward-kill-word
    else
        zle expand-or-complete
    fi
}
zle -N expand-or-complete-or-list-files
# bind to tab
bindkey '^I' expand-or-complete-or-list-files

# aliases
alias vi=vim
alias reload="source ~/.zshrc && echo '~/.zshrc reloaded'"
alias zconf="vi ~/.zshrc && reload"
alias sshconf="vi ~/.ssh/config"
alias clr="clear"
grp() { grep -r "$*" . }
alias gaa="git add --all ."
function mcd() { mkdir -p "$1" && cd "$1"; }
alias repo="hub browse"
github() { hub browse -- $1 }
alias issues="hub browse -- issues"
issue() { hub browse -- issues/$1 }
alias gnetwork="hub browse -- network"
alias gpr="hub browse -- pulls"
alias gcompare="hub browse -- compare"

# common directories
alias css="cd ~/work/luuvit-spree/app/assets/stylesheets/spree/frontend"
