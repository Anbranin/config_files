export PATH=$PATH:~/bin

export CLICOLOR=true

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bash_alias

# Tell bash to append to your history on exit instead of overwritting
shopt -s histappend
# Hack to append to that history after every command
export PROMPT_COMMAND='history -a'
# Don't record running the same command multiple times
# Don't record running commands that start with a space (good for passwords)
export HISTCONTROL='erasedups:ignorespace'
# Put a date and time stamp in your history file
export HISTTIMEFORMAT="%D %T "
# Keep 20,000 commands in your history file
export HISTFILESIZE=20000
# Keep 5000 commands in memory
export HISTSIZE=5000
# List of commands to not bother recording
export HISTIGNORE='ls:history:exit'
