# use oh-my-posh
eval "$(oh-my-posh init zsh --config ~/github/wm/oh-my-posh/dark-plus-vsc.omp.json)"

# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

CASE_SENSITIVE=true
HIST_STAMPS="mm/dd/yyyy"

# plugins
plugins=(git flutter composer docker laravel npm pass colored-man-pages zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

echo "export EDITOR=nvim" >> ~/.bashrc

# compilation
ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"
source $ZSH/oh-my-zsh.sh

# alias lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias h='history'
alias hc='history -c'
alias wf='nmcli dev wifi'
alias wr='nmcli dev wifi rescan'
alias wd='nmcli connection down'
alias nf='neofetch'
alias po='sudo systemctl poweroff'
alias rb='sudo systemctl reboot'
alias rn='ranger'
alias zt='zathura'
alias lg='lazygit'
alias lr='laravel new'
alias ft='flutter create'
alias ncap='npx create-next-app@latest --ts --tailwind --eslint --app --use-bun'
alias sst='sudo systemctl start'
alias sstop='sudo systemctl stop'
alias ssr='sudo systemctl restart'
alias sss='sudo systemctl status'
alias mysd='sudo mysql -u dev -p'
alias mysr='sudo mysql -u root -p'

export ANDROID_HOME="$PATH/android/Sdk" # android sdk
export PATH="$PATH:$ANDROID_HOME/platform-tools" # android platform-tools
export PATH="$PATH:$ANDROID_HOME/tools" # android tools
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/.local/bin" # my global shell script
export PATH="$PATH:$HOME/.local/bin/statusbar/" # shell script for statusbar
export PATH=$PATH:/usr/local/go/bin # golang
export PATH="$HOME/.config/composer/vendor/bin:$PATH" # laravel-installer
export PATH="$PATH:$HOME/.tools/flutter/bin" # flutter
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable" # google-chrome-stable

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# bun
[ -s "/home/dev/.bun/_bun" ] && source "/home/dev/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/dev/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/dev/.dart-cli-completion/zsh-config.zsh ]] && . /home/dev/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]
