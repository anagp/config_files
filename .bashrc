## anagp: Before this line, default ubuntu settings
## anagp: Remember to uncomment "force_color_prompt=yes"

# anagp: adding a couple of alias
# opens files & urls in folders
alias xo='xdg-open'
alias apalog='tail /var/log/apache2/error.log'
alias syslog='tail /var/log/syslog'
# PHP & Laravel
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias composer="php ~/.local/bin/composer.phar"

export LESS='-R'

function g(){
  grep -R -n $1 . 
}

# anagp: support for showing git branches and states
# anagp: ideas from here ->http://ithaca.arpinum.org/2013/01/02/git-prompt.html

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="auto git"

get_sha() {
    git rev-parse --short HEAD 2>/dev/null
}

tssh() {
    if [ "$#" -eq 1 ]; then
        tmux rename-window $1; ssh -4 ana@$1;
    elif [ "$#" -eq 2 ]; then
        tmux rename-window $1; ssh -4 $2@$1;
    else
        echo "Usage: tssh <host> [username]"
    fi
}
# [\e[0;35m\] starts a colour
# [\e[0m\] goes back to terminal front colour
# \u user
# \h host
# \w working directory
# "\\\$" seems to prevent the next part from having extra parenthesis

#PROMPT_COMMAND='__git_ps1 "\[\e[0;35m\]\u@\h:\w\[\e[0m\]" "\\\$ " " [%s $(get_sha)]"'
PROMPT_COMMAND='__git_ps1 "\[\e[0;35m\]\u:\w\[\e[0m\]" "\\\$ " "[%s $(get_sha)]\n"'
alias ana="make -f ana.Makefile"
alias homemake="make -f ~/Makefile"

#turn off bell from https://askubuntu.com/questions/1030515/turn-off-error-sound-on-ubuntu-18-04
bind 'set bell-style none'
