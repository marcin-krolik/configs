# Path to your oh-my-zsh installation.
export ZSH=/home/kromar/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="$USER"
DEBIAN_PREVENT_KEYBOARD_CHANGES=yes

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python history-substring-search golang)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#gvm for go setup
[[ -s "/home/kromar/.gvm/scripts/gvm" ]] && source "/home/kromar/.gvm/scripts/gvm"

#setting go version
gvm use go1.7.5
go version

export GOROOT_BOOTSTRAP=/home/kromar/.gvm/gos/go1.4

##go
export GOPATH=$HOME/gitRepos/go-lang
export PATH=$PATH:$GOPATH/bin:$SNAP_PATH

alias cdgopath='cd $GOPATH'
alias cdsnap='cd $SNAP_PATH'
alias grv='git remote -v'
alias gcm='git checkout master'
alias gs='git status'
alias ga='git add -u'
alias gc='git commit'
alias gdh='git diff HEAD'

func_gitclonemk(){git clone git@github.com:marcin-krolik/$1.git}
alias gclonemk=func_gitclonemk

func_git_dir_commit(){git diff $1^!}
alias gdc=func_git_dir_commit

#func_findinsource(){find $1 -name "*.go" | grep -vE "_test.go|pb.go|vendor" | xargs grep $2}
func_findinsource(){find $1 -name "*.py" | xargs grep $2}
alias finds=func_findinsource

# VIM as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# wirtual env wrapper
export WORKON_HOME=~/Envs
source /usr/bin/virtualenvwrapper.sh

##proxy settings
#export HTTP_PROXY=http://proxy-chain.intel.com:911/
#export HTTPS_PROXY=http://proxy-chain.intel.com:911/
#export FTP_PROXY=http://proxy-chain.intel.com:911/
#export NO_PROXY="intel.com,192.168.0.0/16,10.0.0.0/8,127.0.0.1"
#export http_proxy=http://proxy-chain.intel.com:911/
#export https_proxy=http://proxy-chain.intel.com:911/
#export ftp_proxy=http://proxy-chain.intel.com:911/
#export no_proxy="intel.com,192.168.0.0/16,10.0.0.0/8,127.0.0.1"

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
#bindkey "$terminfo[kcuu1]" history-substring-search-up
#bindkey "$terminfo[kcud1]" history-substring-search-down
#bindkey "$terminfo[cuu1]" history-substring-search-up
#bindkey "$terminfo[cud1]" history-substring-search-down
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
