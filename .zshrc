# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="funky"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

PROMPT='%B%~%b 😺  '

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="$PATH:$HOME/.rbenv/bin" # Add rbenv to PATH for scripting
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim -v'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# For Tmux
export DISABLE_AUTO_TITLE=true

eval "$(rbenv init -)" # Initialize rbenv

alias c='clear'
alias ls='ls -G'
alias ip='ipconfig getifaddr en0'
alias rsq='QUEUE=* be rake resque:work'

alias v="vim -v"
alias vbun='cd ~/.vim/bundle'

alias zshrc='v ~/Codes/configs/.zshrc'
alias vimrc='v ~/Codes/configs/.vimrc'

alias be='bundle exec'

# Heroku
alias hcon='heroku run console -a'
alias hlogs='heroku logs --tail -a'
alias hrun='heroku run'
alias hrake='heroku run rake'

# Tmux
alias tm='tmux'
alias tmr='tmuxinator'
alias tmcf='v ~/.tmux.conf'

# Redis
alias redstart='sudo launchctl start io.redis.redis-server'
alias redstop='sudo launchctl stop io.redis.redis-server'

# Programs
alias python='/Users/Joy-Quipper/.pyenv/versions/3.6.0/bin/python'

# Dash
alias dash='open dash://'

# Reload zshrc
alias reload='source ~/.zshrc'

export NVM_DIR="/Users/Joy-Quipper/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
