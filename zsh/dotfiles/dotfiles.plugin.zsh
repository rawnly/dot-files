##############################
##         Rawnly           ##
## fedevitale99@gmail.com   ##
##############################

# === ALIAS ===
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias pub="dig +short myip.opendns.com @resolver1.opendns.com"

# === END ALIAS ===


alias rf='rm -rf'

# Config File
alias zshrc="atom ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh; show"

# Go to Desktop
alias de="cd ~/Desktop"

# Gulp --silent Shortcut
alias guls="gulp --silent"

# List files colorized in column format.
alias ls="ls ${colorflag}"

# Do what I fucking tell you to, machine.
alias fucking='sudo '
alias _="sudo"


# Lock the screen (when going AFK)
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Figlet
# alias hyper='figlet hyper.app | lolcat'

# Reload the shell (i.e. invoke as a login shell)
alias reload="clear; zsh"

# Clear Shortcuts
alias c="clear"
alias cc="clear"

# Prevents errors
alias claer="clear"

# Remove folders
alias rm="rm -rf"

# Prevents NPM authorization error
# alias npm="sudo npm"

alias run="npm start"
alias nlist="ls `npm root -g`"

# Same as wget
alias download="curl -O"

# Uncomment the following if you have installed them.
#
# CRA | Craeate React Application
# alias react="create-react-app ${1} && cd $1"

# Cute files
# Before be sure to have installed `cute-files`
# with sudo npm install -g cute-files
# alias cute="cute-files -p ${1}"



# .profile.sh


welcome() {
  # echo -ne "Good STAUTS, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  greetings

  echo ""
  echo ""
  echo "LOCAL IP: $LOCALIP"
  echo -ne "PUBLIC IP: "; pub
  echo ""
  echo ""
}

greetings() {
  h=`date +%H`
  if [ $h -lt 12 ]; then
    echo -ne "Good morning, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  elif [ $h -lt 18 ]; then
    echo -ne "Good afternoon, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  else
    echo -ne "Good evening, \e[1;35m$NICKNAME\e[0m! It's "; date '+%A, %B %-d %Y'
  fi
}

website() {
  echo -ne "Good "; dayStat;

  echo "Give me a second please..."

  # Website folders
  mkdir dist/
  mkdir dist/js/
  mkdir dist/css/

  sleep 0.2

  # Files
  touch dist/js/index.js | echo "Touching Index.js"
  touch dist/css/style.css | echo "Touching Style.css"
  touch dist/index.html | echo "Touching Index.html"

  sleep 0.2

  # Non Compiled Folders
  mkdir sass/
  mkdir coffee/

  sleep 0.2

  # Files
  touch coffee/index.coffee | echo "Touching Index.coffee"
  touch sass/style.scss | echo "Touching Style.scss"

  sleep 0.2

  touch Gulpfile.js | echo "Touching Gulpfile"

  sleep 0.2

  # Inits
  git init
  npm init

  echo "Install gulp and dependecies?"
  read gAnsw

  if [ $gAnsw == "Yy*" ]; then
    gkit();
  else
    break;;
  fi
}

# Install gulp basic
gkit() {
  echo "- Gulp"
  sleep 0.2

  echo "- Gulp Sass"
  sleep 0.2

  echo "- Gulp Coffee"
  sleep 0.2

  echo "- Gulp Util"
  sleep 0.2

  echo "- Gulp Connect PHP"
  sleep 0.2

  echo "- Browser Sync"
  sleep 0.2

  echo "- Chalk"
  sleep 0.2

  npm install gulp gulp-util gulp-sass gulp-coffee chalk browser-sync gulp-connect-php --save-dev
}


# Python SimpleHTTPServer
server() {
  if [ -z "${1}" ]
    then
      #Default Options
      a='0.0.0.0'
      p='8000'
      open "http://$a:$p" && python -m SimpleHTTPServer $p
    else
      if [ -z "${2}" ]
        then
          $p = '4000'
          open "http://${1}:$p" && python -m SimpleHTTPServer $p
        else
          open "http://${1}:${2}" && python -m SimpleHTTPServer $2
      fi
  fi
}

# Open current folder in finder
show() {
  open . -a Finder
}

edit() {
  if [ -z "${1}" ]
    then
      echo "\e[31m》ERROR: \e[34mMissing file name."
    else
      if [ -z "${2}" ]
        then
          echo "\e[31m》ERROR: \e[34mNo editor specified."
        else
          if [ -e ${1} ]
            then
              open ${1} -a ${2}
            else
              echo "\e[31m》ERROR 404: \e[34m File not found."
          fi
      fi
  fi
  # Use dot for current dir
  # EXAMPLE: edit .
}

# Add all and push
pushit() {
  if [ -z "${1}" ]; then
    echo "Usage: "
    echo -ne "pushit <commit>     "
    echo "# Push & Add all with commit"
  else
    git add *
    git commit -m "$1";
    git push -u origin master
  fi
}


# dayStat() {
#   p=`date +%p`
#   if [ $p != 'PM' ]; then
#     echo "Morning"
#   else
#     echo "Evening"
#   fi
# }
