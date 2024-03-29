export TERM="rxvt-unicode-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="random"

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

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy/mm/dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(arcanist aws colorize common-aliases emoji emoji-clock git ssh-agent)

# User configuration

#export PATH="/home/chous/.gvm/vertx/current/bin:/home/chous/.gvm/springboot/current/bin:/home/chous/.gvm/lazybones/current/bin:/home/chous/.gvm/jbake/current/bin:/home/chous/.gvm/groovyserv/current/bin:/home/chous/.gvm/groovy/current/bin:/home/chous/.gvm/griffon/current/bin:/home/chous/.gvm/grails/current/bin:/home/chous/.gvm/gradle/current/bin:/home/chous/.gvm/glide/current/bin:/home/chous/.gvm/gaiden/current/bin:/home/chous/.gvm/crash/current/bin:/home/chous/bin:/usr/local/bin:/home/chous/toolbox/checker-framework/checkers/binary:/usr/local/bin:/lib:/bin:/usr/share/ant/bin:/usr/share/maven-bin-1.0//bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.9.0:/usr/x86_64-pc-linux-gnu/avr/gcc-bin/4.6.3:/usr/games/bin:/bin:/home/chous/bin:/home/chous/toolbox/play:/home/chous/github/RT/:/home/chous/toolbox/groovy/bi:/home/chous/.gvm/grails/current/bin:/home/chous/.gvm/grails/current/ant:/home/chous/.cabal/bin:/home/chous/.xmonad/bin:/usr/bin"
# export MANPATH="/usr/local/man:$MANPATH"

zstyle :omz:plugins:ssh-agent agent-forwarding on identities chous-git.osoco.es

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

source ~/.bashrc

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
