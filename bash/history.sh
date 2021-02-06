# do not store duplicates of previous command
export HISTCONTROL=ignoredups

# set unlimited history file size
export HISTFILESIZE=-1
export HISTSIZE=-1

# record the timestamp of each command
export HISTTIMEFORMAT="%F %T "

# attempt to save all lines of a multi-line command in the same entry
shopt -s cmdhist

# append rather than overwrite history
shopt -s histappend

# append to the history file and re-read it after every command
export PROMPT_COMMAND="$PROMPT_COMMAND; history -a; history -c; history -r"
