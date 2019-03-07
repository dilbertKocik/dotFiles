# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# export my android_home variable.
#export ANDROID_HOME=/Users/robertlong/Library/Android/sdk

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnosterzak"

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
plugins=(git git-open bower brew docker git-flow gitfast node npm osx gradle gulp zsh-syntax-highlighting)

# User configuration

export PATH=$PATH":/usr/local/bin:./node_modules/.bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/robertlong/.gem/ruby/1.8/bin:/opt/nginx/sbin"
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

# exercise
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

# Manually load autojump lazily because it slows down the terminal startup if it is included in plugins.
function j() {
    . `brew --prefix`/etc/autojump.sh || echo hello
    j "$@"
}

# aws command autocompletion
source /usr/local/bin/aws_zsh_completer.sh

# zsh auto-completion
fpath=(/usr/local/share/zsh-completions $fpath)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export JAVA_HOME=$(/usr/libexec/java_home)
export IDEA_JDK=$JAVA_HOME
export GRADLE_HOME=/usr/local/opt/gradle/libexec
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_NDK_HOME=$HOME/Library/Android/ndk
export NDK_MODULE_PATH=$HOME/Library/Android/ndk
export SPRING_PROFILES_ACTIVE=local

# Turn off rm * verification nag
setopt rmstarsilent

# Turn off shared history
unsetopt inc_append_history
unsetopt share_history

# Load nodenv into shell environment lazily
function nodenv() {
    unset -f nodenv
    eval "$(nodenv init -)"
    nodenv "$@"
}

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/robert.long/.nodenv/versions/8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/robert.long/.nodenv/versions/8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/robert.long/.nodenv/versions/8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/robert.long/.nodenv/versions/8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
function sdk() {
    unset -f sdk
    export SDKMAN_DIR="/Users/robert.long/.sdkman"
    [[ -s "/Users/robert.long/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/robert.long/.sdkman/bin/sdkman-init.sh"
    sdk "$@"
}
