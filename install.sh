echo "Hello $USER!"
echo "Give me a second please..."
mv dist/aliases.sh .aliases
mv dist/profile.sh .profile

mkdir ~/.shells/

mv dist/.* ~/.shells/

cat rcfile.sh ~/.bashrc && cat rcfile.sh ~/.zshrc

echo "Remove Repo Files?"
read answer

while [true]; do
  if [ $answer == 'Yes' ]
    then
    cd ..
    rm -rf OSX_SETUP
  elif [ $answer == 'No' ]
    then
    break;;
  else
    echo "Please answer Yes or No ( case sensitive )"
  fi
done

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
