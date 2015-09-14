# Set larger system resource limit (Node)
ulimit -S -n 2560

# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Load default Bash profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
export PATH=/usr/local/bin:/bin:/usr/local/share/npm/bin:$PATH:/usr/bin:/usr/local/git/bin:$HOME/npm/bin:/usr/local/bin:/usr/local/share/npm/bin:$HOME/.rvm/bin:$PATH
export VAGRANT_DEFAULT_PROVIDER=parallels

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#
# Aliases
#

# ZSH
alias zshconfig="atom ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zshupgrade="upgrade_oh_my_zsh"

# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias myglog="glog --author=Joe"
gitbranchD(){ git branch -D $1; git push origin --delete $1 }
alias rmDS="find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch"
alias gits="git status"
alias gstash="git stash"
alias mpull="git pull origin master"
alias mpullr="git pull --rebase origin master"

# Desktop Applications
alias subl='open -a "Sublime Text"'
alias chromed="open /Applications/Google\ Chrome.app --args --disable-web-security"

# Project Aliases
alias work="cd ~/htdocs/Work"
alias adoptive="cd ~/htdocs/Work/Adoptive"
alias github="cd ~/htdocs/Code/Github"
alias githubjoe="cd ~/htdocs/Code/Github/josephdburdick"
alias bundoo="cd ~/htdocs/Work/Adoptive/bundoo"
alias yale="cd ~/htdocs/Work/Adoptive/yale/YSMWebsites/Template\ 3.0/SDL\ Tridion/CD/DD4T/Website/static"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/jb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH=/Users/jb/.nvm/versions/v0.12.7/lib/node_modules:/Users/jb/npm/lib/node_modules:/Users/jb/npm/lib/node_modules

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
