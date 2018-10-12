# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh;

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export SSH_KEY_PATH="~/.ssh/rsa_id";
export EDITOR='vim';
export CODE_FOLDER="~/code";
export NODE_ENV="devlopment";
# export PS1="$PS1 $(it2setkeylabel set status $(test -d .git && (git rev-parse --abbrev-ref HEAD || (echo -n 'Not a repo'))))" 

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# SpaceShip Theme: https://github.com/denysdovhan/spaceship-prompt
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, npm, brew, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/local/etc/profile.d/z.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Custom Files

# Aliases
source ~/shell/.aliases.sh;

# Stuff
source ~/shell/.extra.sh;


# Iterm2 Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Added by travis gem
[ -f /Users/$USER/.travis/travis.sh ] && source /Users/$USER/.travis/travis.sh


################ END ###########################
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/$USER/.config/yarn/global/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/$USER/.config/yarn/global/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsha

#export PS1="$(it2setkeylabel set status "$(getBranch)")"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
