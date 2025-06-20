function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if not set -q TERM_PROGRAM
    starship init fish | source
end

if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

alias pamcan=pacman
alias reload='clear && source ~/.config/fish/config.fish'
alias venv='source ./.venv/bin/activate.fish'

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end

if test -f ~/.bash_aliases 
    source ~/.bash_aliases
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    nitch
end
