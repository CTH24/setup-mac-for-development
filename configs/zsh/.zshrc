ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/daniel/.oh-my-zsh"
export XDEBUG_CONFIG="idekey=VSCODE"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
plugins=(
    git
    osx
    zsh-syntax-highlighting
    zsh-autosuggestions
    npx
    brew
    yarn
    web-search
    docker
    docker-compose
    z
    chucknorris
    thefuck
    vi-mode
    zsh_reload
)
source $ZSH/oh-my-zsh.sh
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="~/.npm_global/bin:$PATH"
export PATH="/Users/daniel/.npm_global/bin/:$PATH"

# Read Dotfiles
source ~/.dotfiles/zsh/entry.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
