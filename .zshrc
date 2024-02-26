# use oh-my-posh
eval "$(oh-my-posh init zsh --config ~/Builds/Shell/theme-3.omp.json)"

export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k" # robbyrussell

# plugins zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

source $ZSH/oh-my-zsh.sh

# alias
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
devinfo() { neofetch | lolcat }
wifi() { sudo nmcli dev wifi list | lolcat }

colorscript random # random colorscript, https://gitlab.com/dwt1/shell-color-scripts

# costume path
export PATH="$PATH:$HOME/.tools/flutter/bin" # flutter
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable" # google-chrome-stable
export PATH="$PATH:$HOME/.local/bin" # global shell script
export PATH="$PATH:$HOME/.local/bin/statusbar/" # my shell script statusbar
export PATH="$HOME/.config/composer/vendor/bin:$PATH" # laravel global installer
export PATH="$HOME:/usr/local/go/bin:$PATH" # golang

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# bun
[ -s "/home/dev/.bun/_bun" ] && source "/home/dev/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
