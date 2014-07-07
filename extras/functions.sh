####################
# APP FUNCTIONS    #
####################
# https://groups.google.com/group/iterm2-discuss/browse_thread/thread/d1d384e0d0269754/e22d36b056cb7cca?#e22d36b056cb7cca
function newwindow {
  if [ -z "$@" ]; then
    command=''
  else
    command=' && '
    # make sure all inputs are added to command, rather the just the first one
    for a in $@
    do
      command=$command" $a"
    done
  fi

  osascript -e "
  tell application \"iTerm\"
    activate
    set myterm to (make new terminal)
    tell myterm
      launch session \"Default Session\"
      tell the last session
          write text \"cd $(PWD)$command\"
      end tell
    end tell
  end" > /dev/null 2>&1
}

# iterm2 AppleScript Documentation: http://www.iterm2.com/#/section/documentation/general
# newtab [:command?] ex: newtab ls
# bash: $@ stands for all inputs
function newtab {
  if [ -z "$@" ]; then
    command=''
  else
    command=' && '
    # make sure all inputs are added to command, rather the just the first one
    for a in $@
    do
      command=$command" $a"
    done
  fi

  osascript -e "
  tell application \"iTerm\"
    activate
    tell the first terminal
        launch session \"Default Session\"
        tell the last session
          write text \"cd $(PWD)$command\"
        end tell
      end tell
  end tell" > /dev/null 2>&1
}


####################
# CD FUNCTIONS     #
####################
# [Desktop] change directory command
function desktop_swap {
  if [ -z "$1" ]; then
    cd ~/Desktop
  else
    foldername=$1
    shift
    cd ~/Desktop/$foldername
  fi
}


####################
# RAILS FUNCTIONS  #
####################
# custome rails3 applicationt template
# source sample - http://github.com/ryanb/rails-templates/tree
function rails3 {
  if [ -z "$1" ]; then
    appname="Armada"
  else
    appname=$1
    shift
  fi

  #rails new $appname -m ~/Repos/rails3/rails3.rb --skip-testunit
  #rails new $appname -m ~/repos/rails3/rails3.rb -T --skip-bundle
  rails new $appname -m ~/repos/rails3/rails3.rb -T

  cd $appname
  #subl . $@
}

function rails4 {
  if [ -z "$1" ]; then
    appname="Blawg"
  else
    appname=$1
    shift
  fi

  rails new $appname -m ~/repos/rails4/rails4.rb -T
  cd $appname
}


# copies [current] Armada build from: /Users/tarellel/sandbox/Armada
function rails3clone {
  if [ -z "$1" ]; then
    appname="Armada"
  else
    appname=$1
    shift
  fi
  cp -R ~/Sandbox/Armada $appname
  cd $appname
}