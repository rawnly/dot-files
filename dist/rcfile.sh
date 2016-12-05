# Your .bashrc or .zshrc
export LOCALIP=$(LANG=C /sbin/ifconfig  | sed -ne $'/127.0.0.1/ ! { s/^[ \t]*inet[ \t]\\{1,99\\}\\(addr:\\)\\{0,1\\}\\([0-9.]*\\)[ \t\/].*$/\\2/p; }')
export NAME="Jhon"
export SURNAME="Doe"
export FULLNAME="$NAME $SURNAME"
export NICKNAME="edit this in ~/.zshrc"

# Source files
source ~/.shells/.aliases # or . path/to/file
source ~/.shells/.profile # or . path/to/file

# Invoke welcome message function in profile.sh
welcome

# before install simple-weather with the following
# 'sudo npm install -g weather'
weather
