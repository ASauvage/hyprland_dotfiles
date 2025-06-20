#
# ~/.bash_aliases
#

# Shortcut
alias ..='cd ..'
alias desktop='cd $HOME/Desktop'
alias downloads='cd $HOME/Downloads'
alias documents='cd $HOME/Documents'
alias pictures='cd $HOME/Pictures'
alias music='cd $HOME/Music'
alias videos='cd $HOME/Videos'
alias data='cd /mnt/DATA'
alias repos='cd /mnt/DATA/repositories'

alias hyprbinds='vim ~/.config/hypr/hyprland/bind.conf'

# System
alias bashrc='vim ~/.bash_aliases'

alias ls='ls --color=auto'
alias li='ls -li'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias rm='rm -i'

alias pacremove='sudo pacman -Runs'

# Python
alias py='python3'
alias createvenv='python3 -m venv .venv --upgrade-deps && echo .venv created'
alias requirements='pip install -r requirements.*{txt, pip}'
# alias requirements='python3 -m pipreqs.pipreqs'

# Git

# QoL
alias grep='grep --color=auto'
alias mongostart='sudo systemctl start mongodb.service'
alias mongostop='sudo systemctl stop mongodb.service'
alias toudoux='py /mnt/DATA/repositories/toudoux/toudoux.py'

# Other
alias pokemmo='bash /mnt/DATA/PokeMMO-Client/PokeMMO.sh'
