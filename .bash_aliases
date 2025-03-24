#
# ~/.bash_aliases
#

# Shortcut
alias ..='cd ..'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'
alias pictures='cd ~/Pictures'
alias music='cd ~/Music'
alias videos='cd ~/Videos'
alias data='cd /run/media/alex/DATA'
alias repos='cd /run/media/alex/DATA/repositories'

alias hyprbinds='vim ~/.config/hypr/hyprland/bind.conf'

# System
alias bashrc='vim ~/.bash_aliases'

alias ls='ls --color=auto'
alias li='ls -li'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias rm='rm -i'

alias bt='~/.config/hypr/scripts/bluetooth.sh'

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
alias toudoux='py /run/media/alex/DATA/repositories/toudoux/toudoux.py'

# Other
alias pokemmo='bash /run/media/alex/DATA/PokeMMO-Client/PokeMMO.sh'

