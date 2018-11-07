source "./utils/libs.sh"

macos = false

if [["$OSTYPE" =~ ^darwin ]]; then
    macos = true
fi


if [[ macos == true ]]; then
    # Install Brew if not found on MacOS
    command -v brew >/dev/null 2>&1 || installBREW
fi

# Install ZSH if not found
command -v zsh >/dev/null 2>&1 || installZSH

# Install OH MY ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Install SpaceShip Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install NODE
command -v node >/dev/null 2>&1 || installNODE

# Install NVM
echo "If you dont'. You should install NVM"

command -v yarn >/dev/null 2>&1 || installYARN

# Create the plugins folder
mkdir -p ~/zsh-plugins

# Install SyntaxHighlighting & Suggestions
cd ~/zsh-plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-autocomplete.git ~/zsh-plugins/zsh-syntax-autocomplete
cd ..

# Setup .zshrc
mv ~/.zshrc ~/.zshrc.bk
cp ./dist/rcfile ~/.zshrc

# Setup shell folder
mkdir -p ~/shell
cd ~/shell

cp ./dist/aliases.sh ~/shell/.aliases
cp ./dist/extra.sh ~/shell/.extra
