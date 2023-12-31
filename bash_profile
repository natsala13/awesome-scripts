alias ..="cd .."

export PS1="\W ❄️  "

# History auto complete
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

shopt -s checkwinsize  # keep line for overwritting itself
