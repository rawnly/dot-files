# SETUP

```shell
  # Your .bashrc or .zshrc
  export LOCALIP=$(LANG=C /sbin/ifconfig  | sed -ne $'/127.0.0.1/ ! { s/^[ \t]*inet[ \t]\\{1,99\\}\\(addr:\\)\\{0,1\\}\\([0-9.]*\\)[ \t\/].*$/\\2/p; }')
  export NAME=" your name "
  export SURNAME=" your surname "
  export FULLNAME="$NAME $SURNAME"
  export NICKNAME=" your nickname "

  # Source files
  # Recommended ~/file.sh
  . path/to/aliases.sh
  . path/to/profile.sh

  # Invoke welcome message function in profile.sh
  welcome
```
