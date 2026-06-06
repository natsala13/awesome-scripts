alias ..="cd .."
alias ...="cd ../.."

machine_name=$(hostname)
if [ "$machine_name" == "2u1g-b650-1037" ]; then
    machine_name="col1"
elif [ "$machine_name" == "2u1g-b650-0526" ]; then
    machine_name="col2"
elif [ "$machine_name" == "2u2g-gen-0001" ]; then
    machine_name="col3"
elif [ "$machine_name" == "2u1g-b650-0488" ]; then
    machine_name="col4"
elif [ "$machine_name" == "2u1g-b650-0453" ]; then
    machine_name="col5"
fi

export MACHINE_NAME=$machine_name

export EMOJI=$(if [ -z $CONTAINER_ID ]; then echo '🤖'; else echo '🎁'; fi)
export PS1='$machine_name:$(res=$?;if [ $res != 0 ]; then echo "\[\e[0;31m\] ERR $res \[\e[0m\]"; fi) \[\e[0;35m\]\W\[\e[0m\] $EMOJI '
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


[ -f /data/tmp/shared_aliases ] && source /data/tmp/shared_aliases

# Created by `pipx` on 2025-10-12 12:03:15
export PATH="$PATH:/home/nsala/.local/bin"

WANDB_API_KEY=3c6846f8a7b315ff599f9b79332dcee790e8044e

count_frames () {
        ffprobe -v error -hide_banner -show_streams -count_frames -show_entries stream=nb_read_frames -of default=nw=1 $1 | grep nb_read_frames
}
. "$HOME/.cargo/env"

export LOGURU_LEVEL=ERROR
export tennis=${VDB_ROOT}/../hof/perflab/camcorder_subset_1080/tennis_1920x1080_420_8_30_200.y4m

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/home_local/scratch.nsala_colossus/bin/VQAnalyzer_5.3.0

shopt -s autocd
shopt -s cdspell
