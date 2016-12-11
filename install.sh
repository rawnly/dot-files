if [[ $SHELL == '/bin/zsh' ]]
then
  echo "Your are using $SHELL"
  source .installers/install_zsh.sh
elif [[ $SHELL == '/bin/sh' ]]
then
  echo "Your are using $SHELL"
  source .installers/install_bash.sh
fi
