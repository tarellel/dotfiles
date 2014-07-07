########## srcs ##########
# https://github.com/radar/dot-files/blob/master/bashrc
# https://github.com/coleww/dotfiles/blob/master/.aliases
# MORE EXAMPLES TO USE
# - https://github.com/dolzenko/dotfiles/blob/master/.zshrc
##########################
alias q="$EDITOR ~/.zshrc"
alias qq="source ~/.zshrc"

#alias mate='open -n "/Applications/textmate.app"'


####################
# OSx Aliases #
####################
alias dnsdump="dscacheutil -flushcache && killall -HUP mDNSResponder"
# Show/hide hidden files in Finder
alias showdot="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedot="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

####################
# Application Aliases #
####################
alias get="curl -O"
# Open TextEditors
#alias mvim='/opt/local/bin/mvim' # starts macVim
alias subl="~/bin/subl"

#alias all_update='brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update --system; sudo gem update'
alias all_update='brew update; brew upgrade; brew cleanup; sudo gem update --system; sudo gem update'


####################
# File Aliases #
####################
alias l='ls -halo'
alias l.='ls -d .* -G'
alias ll='ls -lhF'
alias lla="ls -lAhF"


####################
# Location ALIASES #
####################
alias repos='cd ~/repos'
alias sandbox='cd ~/Sandbox'

alias dt=desktop_swap
alias ..='cd ..;' # can chain command .. .. ..
alias ...='.. ..'

################################################################################
####################
# git ALIASES      #
####################
# add git aliases from : (src: https://github.com/bkuhlmann/dotfiles/blob/master/home_files/bashrc.txt)
alias g="git status"    # status of files
alias ga="git add"      # add a file to staging
alias ga."git add ."    # add all files to repo
alias gr="git rm"       # remove a file
alias gc="git commit"   # commit files to repo
alias gcm="git commit -a -m" # commit files to repo with a message
alias gp="git push"     # push to repo
alias gpl="git pull"    # pull from repo
alias gpom="git push origin master" # typically to send to github
alias gco="git checkout" # checkout
alias gb="git branch"   # for branching
alias gm="git merge"    # for merging
alias gi="git instaweb --httpd webrick" # to visualize in browser
alias gl="git gl"       # pretty log (specs in .gitconfig)
alias gd="git diff"     # diff a file

####################
# Rails ALIASES    #
####################
alias rn="rails new"
alias rts="rails s thin"
alias ss="rails server"
alias rc="rails console"
alias rg='rails generate'
alias rgs='rails generate scaffold'
alias rgm='rails generate migration'
alias rst="rails server -e test"
alias rsp="rails server -e production"
alias tlog="tail -f log/development.log"
alias migrate='rake db:migrate db:test:prepare'
alias remigrate='rake db:drop db:create db:migrate'

alias model="rails generate model"
alias controller="rails generate controller"
alias migration="rails generate migration"

# Bundler
alias bx='bundle exec'
alias bo='bundle open'
alias bu='bundle update'


####################
# Databases Aliases #
####################

# pass
alias start_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'