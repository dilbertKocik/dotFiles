# Edit aliases
alias bashalias='vim ~/.oh-my-zsh/custom/aliases.zsh && reload'
alias gitalias='vim ~/.gitconfig && reload'

# zsh
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc='vim ~/.zshrc && reload'

# Edit vimrc
alias vimrc='vim ~/.vimrc'

# Bambooed
alias bam='bambooed --project TMS --plan TMS --server http://bamboo.nextgearcapital.com'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi
# List directory contents
alias sl=ls
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

alias afind='ack-grep -il'

# Clear
alias c='clear'
alias k='clear'
alias cls='clear'
alias clr='clear'

# Directory
alias ..='cd ..'           # Go up one directory
alias cd..='cd ..'         # Go up one directory
alias ...='cd ../..'       # Go up two directories
alias cd...='cd ../..'     # Go up two directories
alias ....='cd ../../..'   # Go up three directories
alias cd....='cd ../../..' # Go up three directories

# Editor
alias edit="open -a TextMate"

# Git
checkoutBranch() {
    git checkout `(gb && gbr) | grep -i $1 -m 1 | sed -e "s/origin\///"`
}

alias g='git'
alias get='git'
alias gs='git status'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gl='git pull'
alias gp='git push'
alias gb='git branch'
alias gba='git branch -a'
alias gbr='git branch -r'
alias gmd='git pull && git merge origin/develop'
alias gpurge="git branch -r | awk '{print \$1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print \$1}' | xargs git branch -d"
alias gprune='git remote prune origin'
alias gcb=checkoutBranch
alias gcd='git checkout develop'

# Gradle
alias guild='gradle clean build run -Pdev -x test'
alias guilt='gradle clean build run -Pdev'
alias grun='gradle run -Pdev'

# Gulp
testUnit() {
    if [ $# -eq 1 ]; then
        gulp $1
    else
        gulp $1 --unit='src/**/'$2'*.js' --skipCheckCode
    fi
}

alias gunit='testUnit test:unit'
alias gapi='gulp test:api'
alias ge2e='gulp test:e2e'
alias gall='gulp test'
alias gtdd='testUnit tdd'
alias gopen='gulp open'
alias gsnap='gulp db:snapshot --name=freshdb'
alias grest='gulp db:restore --keep --name=freshdb'

# Desktop programs
alias fireworks="open -a '/Applications/Adobe Fireworks CS3/Adobe Fireworks CS3.app'"
alias photoshop="open -a '/Applications/Adobe Photoshop CS3/Adobe Photoshop.app'"
alias preview="open -a '$PREVIEW'"
alias xcode="open -a '/Applications/XCode.app'"
alias filemerge="open -a '/Developer/Applications/Utilities/FileMerge.app'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias chromium="open -a chromium"
alias dashcode="open -a dashcode"
alias f='open -a Finder '
alias fh='open -a Finder .'
alias textedit='open -a TextEdit'
alias textmate='open -a TextMate'
alias sublime="open -a '/Applications/Sublime Text.app'"
alias hex='open -a "Hex Fiend"'
alias skype='open -a Skype'
alias mou='open -a Mou'

# Show/hide hidden files (for Mac OS X Mavericks)
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE"

# Telnet Star Wars
alias starwars='telnet towel.blinkenlights.nl'
