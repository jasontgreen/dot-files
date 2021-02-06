NO_COLOUR="\[\e[0m\]"
FG_LIGHT_CYAN="\[\e[96;1m\]"
FG_LIGHT_GREEN="\[\e[92;1m\]"
FG_LIGHT_MAGENTA="\[\e[95;1m\]"
FG_LIGHT_RED="\[\e[91;1m\]"
FG_LIGHT_YELLOW="\[\e[93;1m\]"

__set_ps1() {
    if [ $? -eq 0 ]; then
        PROMPT_COLOUR="$FG_LIGHT_GREEN"
    else
        PROMPT_COLOUR="$FG_LIGHT_RED"
    fi

    export PS1="\[\033]2;\u@\h : \w\007\]$FG_LIGHT_CYAN$(date +'%F %T') $FG_LIGHT_MAGENTA\u@\h $FG_LIGHT_YELLOW\w\n$PROMPT_COLOUR\! \$ $NO_COLOUR"
}

export PROMPT_COMMAND="__set_ps1"
