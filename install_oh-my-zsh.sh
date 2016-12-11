echo "Hello $USER!"
echo "Give me a second please..."

cp -rf zsh/dotfiles ~/.oh-my-zsh/custom/plugins

# ZSH or OH-MY-ZSH
cat dist/rcfile.sh >> ~/.zshrc

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
