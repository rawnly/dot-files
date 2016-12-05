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

# PERSONAL

alias d="cd ~/Desktop"




# ADB and Fastboot to prevent ./adb or ./fastboot < command >
alias adb='./adb'
alias fastboot='./fastboot'

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
alias hyper='figlet hyper.app | lolcat'

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

# CRA | Craeate React Application
alias react="create-react-app ${1} && cd $1"
# Cute files
alias cute="cute-files -p ${1}"
