export PATH="$HOME/.local/bin:$PATH"

alias ..="cd .."

export PROMPT='%1~ ❄️%G  '
# Equivalent of the colored bash prompt (uncomment to use):
# PROMPT='%n: %(?..%F{red} ERR %? %f)%F{magenta}%1~%f 🤖 '

# History up/down search by current prefix
if [[ -o interactive ]]
then
    autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
    zle -N up-line-or-beginning-search
    zle -N down-line-or-beginning-search
    bindkey '^[[A' up-line-or-beginning-search
    bindkey '^[[B' down-line-or-beginning-search
fi

# Make each session write to history at every prompt.
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTFILE=~/.zsh_history
setopt APPEND_HISTORY      # append instead of overwrite
setopt INC_APPEND_HISTORY  # write command after each one
setopt SHARE_HISTORY       # share history across sessions

export PYTHONPATH=.

# NemoClaw PATH setup
export PATH="/Users/nsala/.local/bin:$PATH"
# end NemoClaw PATH setup

# OpenClaw Completion
[ -f '/Users/nsala/.openclaw/completions/openclaw.zsh' ] && source '/Users/nsala/.openclaw/completions/openclaw.zsh'
