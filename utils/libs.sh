macos=true
linux=false

if [[ $OSTYPE =~ ^darwin ]]; then
    macos=true
	linux=false
else if [[ $OSTYPE =~ ^linux ]]; then
	macos=false
	linux=true
fi

function checkCURL() {
	command -v curl >/dev/null 2>&1 || echo "CURL NOT INSTALLED, OPERATION ABORTED!"; exit
}

function installBREW() {
    if [["$OSTYPE" =~ ^darwin]]; then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
}

function installZSH() {
    if [ macos ]; then
		brew install zsh
	else if [ linux ]; then
		apt-get install zsh || yum install zsh || apt install zsh;
	fi
}

function installNODE() {
    curl -Ls https://install-node.now.sh | $SHELL
}

function installNVM() {
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | $SHELL
}

function installYARN() {
    curl -o- -L https://yarnpkg.com/install.sh | $SHELL
}