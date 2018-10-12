# Install BREW
function installBREW() {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function installZSH() {
    brew install zsh
}

function installNODE() {
    curl -O https://nodejs.org/dist/v10.9.0/node-v10.9.0.pkg | open
}

function installNVM() {
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
}

function installYARN() {
    curl -o- -L https://yarnpkg.com/install.sh | bash
}

# Install Brew if not found
command -v brew >/dev/null 2>&1 || installBREW()

# Install ZSH if not found
command -v zsh >/dev/null 2>&1 || installZSH()

if [-z "$ZSH_CUSTOM"]; then
    # Install OH MY ZSH
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install SpaceShip Prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install NODE
command -v node >/dev/null 2>&1 || installNODE()

# Install NVM
command -v nvm >/dev/null 2>&1 || installNVM()

command -v yarn >/dev/null 2>&1 || installYARN()

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
