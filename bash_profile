
# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

alias ..="cd .."

export PS1="\W ❄️  "

# History auto complete
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.10/bin/python3
export WORKON_HOME=/Users/nathansala/.virtualenvs/
source /Library/Frameworks/Python.framework/Versions/3.10/bin/virtualenvwrapper.sh

shopt -s checkwinsize  # keep line for overwritting itself

export PATH="$PATH:/Users/nathansala/Applications/flutter/bin"
