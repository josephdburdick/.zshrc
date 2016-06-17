# Path to your oh-my-zsh installation.
export ZSH=/Users/jb/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git meteor )

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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

# ZSH
alias zshconfig="atom ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zshupgrade="upgrade_oh_my_zsh"

# Git
alias undo-merge="git reset --merge ORIG_HEAD"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias myglog="glog --author=Joe"
gitbranchD(){ git branch -D $1; git push origin --delete $1 }
gitBranchDelete(){ git branch -D $1; git push origin --delete $1 }
gitDeleteBranch(){ git branch -D $1; git push origin --delete $1 }
alias rmDS="find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch"
alias gits="git status"
alias gstash="git stash"
alias mpull="git pull origin master"
alias mpullr="git pull --rebase origin master"
function bfg() { java -jar /Users/jb/Applications/Terminal/bfg-1.12.8.jar $@;}

# Desktop Applications
alias subl='open -a "Sublime Text"'
alias chromed="open /Applications/Google\ Chrome.app --args --disable-web-security"
alias inbox="open /Applications/Inbox.app"
alias mixcloud="open /Applications/Mixcloud.app"
alias localhost3000="open /Applications/localhost3000.app"
alias pythonserver="python -m SimpleHTTPServer 8000"

#Exports
export ANDROID_HOME=/usr/local/opt/android-sdk
export NVM_DIR="/Users/jb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin
export NODE_PATH=/Users/jb/.nvm/versions/v0.12.7/lib/node_modules:/Users/jb/npm/lib/node_modules:/Users/jb/npm/lib/node_modules
export PATH="$HOME/.node/bin:$MAMP_PHP:$PATH:/Applications/MAMP/Library/bin:/usr/local/mysql/bin:$HOME/.rvm/bin:/usr/local/share/npm/bin:/usr/local/bin/elixir:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

ansiweather -l nyc -F -u imperial
