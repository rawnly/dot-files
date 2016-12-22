echo "Hello $USER"
echo "Now i'll install all dependecies and files.."

sudo npm install -g weather-commandline

if [[ $SHELL == '/bin/zsh' ]]
then

  echo "Your are using $SHELL"
  ./.installers/install_zsh.sh

elif [[ $SHELL == '/bin/sh' ]]
then

  echo "Your are using $SHELL"
  ./.installers/install_bash.sh
  
fi
