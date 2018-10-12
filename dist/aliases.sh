alias rcfile="$EDITOR ~/.zshrc"

alias c="clear";
alias g="git";

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

#  PHP artisan shortcut
alias artisan="php artisan";

alias federico="ssh root@138.68.102.254";

alias cpf="cp -rf"
alias rmf="rm -rf"

alias codef="cd $CODE_FOLDER"

alias mkdirp="mkdir -p";
alias cra="create-react-app";

# YARN Shortcut
alias y="yarn";

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Copy my public key to the pasteboard
alias pbk="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'"

alias mono="/Library/Frameworks/Mono.framework/Commands/mono"
alias csc="/Library/Frameworks/Mono.framework/Commands/csc"

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias getBranch="test -d .git && (git rev-parse --abbrev-ref HEAD) || (echo 'Not a repo')"
