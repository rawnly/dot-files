echo "Hello $USER!"
echo "Give me a second please..."

cd ~/.oh-my-zsh/custom/plugins

mkdir dotfiles && cd dotfiles

curl -O --silent https://raw.githubusercontent.com/Rawnly/dot-files/master/zsh/dotfiles/dotfiles.plugin.zsh


# ZSH or OH-MY-ZSH
cat dist/rcfile.sh >> ~/.zshrc

echo "Done! Please visit https://www.github.com/Rawnly for more infos."
