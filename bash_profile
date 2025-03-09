alias ..="cd .."

export PS1="\W ❄️  "
# one tick is important so that PS1 will be evaluated at print and not now.
# export PS1='\h: $(res=$?;if [ $res != 0 ]; then echo "\[\e[0;31m\] ERR $res \[\e[0m\]"; fi) \[\e[0;35m\]\W\[\e[0m\] 🤖 '

# History auto complete
if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

shopt -s checkwinsize  # keep line for overwritting itself

# Make each session write to history at every prompt.
export HISTSIZE=-1
export HISTFILESIZE=-1
shopt -s histappend  # make history file append instead of overwrite.
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"  # write command after each one.

export PYTHONPATH=.

# NvEnc do not check compatability between driver and NvEncodeApp.
# Needed when using argument LD_LIBRARY_PATH, and changing defacto the driver libraries.
export __RM_NO_VERSION_CHECK=2
export LD_LIBRARY_PATH=.

