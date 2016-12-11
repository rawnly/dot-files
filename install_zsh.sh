echo "Hello $USER!"
echo "Give me a second please..."

mv dist/aliases.sh .aliases
mv dist/profile.sh .profile

mkdir ~/.shells/

cp dist/.* ~/.shells/

# ZSH or OH-MY-ZSH
cat dist/rcfile.sh >> ~/.zshrc

echo "Done! Please visit \e[34mhttps://www.github.com/Rawnly for more infos.\e[0m"
