NO_COLOUR="\[\e[0m\]"
FG_GREEN="\[\e[32m\]"
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

    export PS1_PRE_GIT="\[\033]2;\u@\h : \w\007\]$FG_LIGHT_CYAN$(date +'%F %T') $FG_LIGHT_MAGENTA\u@\h $FG_LIGHT_YELLOW\w"
    export PS1_POST_GIT="\n$PROMPT_COLOUR\! \$ $NO_COLOUR"
    export PS1="$PS1_PRE_GIT$PS1_POST_GIT"
}

if [ -f ~/src/jasontgreen/dot-files/git/prompt.sh ]; then
    export GIT_PS1_SHOWCOLORHINTS=true
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWSTASHSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
    export GIT_PS1_SHOWUPSTREAM="auto"

    export GIT_PS1=" $NO_COLOUR$FG_GREEN(%s$FG_GREEN)"
    export PROMPT_COMMAND='__set_ps1; __git_ps1 "$PS1_PRE_GIT" "$PS1_POST_GIT" "$GIT_PS1"'
else
    export PROMPT_COMMAND='__set_ps1'
fi
