ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/daniel/.oh-my-zsh"
export XDEBUG_CONFIG="idekey=VSCODE"

# Config Files
alias cz="vi ~/.zshrc"
alias clf="vi ~/.config/lf/lfrc"
alias cv="vi ~/.vimrc"
alias cvp="vi ~/.vim/plugins.vim"

ZSH_THEME="norm"
#ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
    git
    osx
    zsh-syntax-highlighting
    zsh-autosuggestions
    vi-mode
    npx
    brew
    docker
    docker-compose
)
source $ZSH/oh-my-zsh.sh
export PATH=$PATH:$HOME/.composer/vendor/bin
POWERLEVEL9k_MODE="awesome-fondconfig"
POWERLEVEL9K_LPROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_TIME_FORMAT='%D{%S:%M:%H}'
POWERLEVEL9K_MULTILINE_LAST_PROMT_PREFIX="B "
POWERLEVEL9K_MULTILINE_FIRST_PROMT_PREFIX=""
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_CUSTOM_CTH24_ICON="echo '\ue711 CTH24'"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_cth24_icon dir dir_writable nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(laravel_version)
POWERLEVEL9K_NVM_BACKGROUND='28'
POWERLEVEL9K_NVM_FOREGROUND='15'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"

# Editors - Open Folders
alias v='vim $(fzf)'
alias c="code ."
alias s="sublime ."
alias p="phpstorm ."

alias calender="open ical://"
alias spark="open /Applications/Spark.app"
alias notion="open /Applications/Notion.app"

# Cat with Highlight File
alias pcat="highlight -O ansi --force"

#LF - Terminal File Browser
bindkey -s '^o' 'lf\n'

alias subl="sublime"

# Git
alias gs="git status"
alias nah="git reset --hard && git clean -df"
git_repo_reset() {
    git checkout --orphan TEMP_BRANCH
    git add -A
    git commit -am "Initial commit"
    git branch -D master
    git branch -m master
    git push -f origin master
}

gitall() {
    git add .
    if [ "$1" != "" ]; then # or better, if [ -n "$1" ]
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}
alias g="gitall"

# VI Mode
#bindkey -v
#export KEYTIMEOUT=1

# PHP Artisan
alias art="php artisan"
alias a="php artisan "

artcm() {
    if [ "$1" != "" ]; then
        php artisan make:migration create_$1:ls_table
        php artisan make:controller $1Controller --resource --model=$1
    else
        echo "Enter Model Name"
    fi
}

artcm-edit() {
    if [ "$1" != "" ]; then
        phpstorm database/migrations/*_$1:ls_* app/Http/Controllers/$1Controller.php app/$1.php routes/web.php
    fi
}

artcm-delete() {
    if [ "$1" != "" ]; then
        rm database/migrations/*_$1:l_*
        rm app/Http/Controllers/$1Controller.php
        rm app/$1.php
    fi
}

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="~/.npm_global/bin:$PATH"
export PATH="/Users/daniel/.npm_global/bin/:$PATH"

alias o='open $(fzf)'
alias t="touch"
alias clearCache="sudo killall -HUP mDNSResponder && echo macOS DNS Cache Reset"
#
# File System
#
alias gh="cd && clear && echo 'Home Directory' && echo '==============' && echo	&& date && echo	&& ll && echo"
alias gc="cd ~/code && clear && echo 'Code' && echo '====' && echo && date && echo && ll && echo"
alias gp="cd ~/Projekte && clear && echo 'Projekte' && echo '========' && echo && date && echo && ll && echo"
alias gn="cd ~/Notizen && clear && echo 'Notizen' && echo '=======' && echo && date && echo && ll && echo"

# Bilder
alias gb="cd ~/Bilder && clear && echo 'Bilder' && echo '======' && echo && date && echo && ll && echo"
m2b() {
    mv $1 ~/Bilder/
}

alias gv="cd ~/Videos && clear && echo 'Videos' && echo '======' && echo && date && ll && echo"

# Downloads
alias gd="cd ~/Downloads && clear && echo 'Downloads' && echo '=========' && echo && date && echo && ll && echo"
m2d() {
    mv $1 ~/Downloads
}
alias fd="~/Downloads/"

alias gcth="cd '/Users/daniel/Library/Mobile Documents/com~apple~CloudDocs/CTH24/' && clear && ll"
alias gpost="cd '/Users/daniel/OneDrive/Posteingang' && clear && ll"
alias post="gpost && clear && echo 'Posteingang' && echo '===========' && echo && date && echo && ll && echo"

alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias iab="cd ~/code/iab && ./dev.sh"

#determines search program for fzf
if type ag &>/dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
#refer rg over ag
if type rg &>/dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

alias lh="lighthouse"
alias iab-lh="lh http://iab-backend-wordpress.test/"

morgen() {
    up
    echo "Starte Mail Programm"
    spark
    echo "Starte Kalender"
    calender
}

# fh - search in your command history and execute selected command
fh() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# ch - browse chrome history
ch() {
    local cols sep
    cols=$((COLUMNS / 3))
    sep='{::}'

    cp -f ~/Library/Application\ Support/Google/Chrome/Profile\ 1/History /tmp/h

    sqlite3 -separator $sep /tmp/h \
        "select substr(title, 1, $cols), url
     from urls order by last_visit_time desc" |
        awk -F $sep '{printf "%-'$cols's  \x1b[36m%s\x1b[m\n", $1, $2}' |
        fzf --ansi --multi | sed 's#.*\(https*://\)#\1#' | xargs open
}

export PATH="/usr/local/opt/valet-php@7.4/bin:$PATH"
export PATH="/usr/local/opt/valet-php@7.4/sbin:$PATH"

#NVM
source ~/.dotfiles/zsh/nvm.sh

#Start Screen
source ~/.dotfiles/zsh/startscreen.sh

# Funktionen
source ~/.dotfiles/zsh/up.sh

# Aliase
source ~/.dotfiles/zsh/alias.sh
