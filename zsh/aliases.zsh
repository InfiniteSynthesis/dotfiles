alias _='sudo '

# Navigation
alias ...=../..
alias ....=../../..
alias .....=../../../..

# Folders
alias work="$HOME/Workspace"
alias doc="$HOME/Documents"
alias dl="$HOME/Downloads"

# grep
alias grep='grep --color=auto --exclude-dir={.git}'
alias egrep='grep -E --color=auto --exclude-dir={.git}'
alias fgrep='grep -F --color=auto --exclude-dir={.git}'

# git
alias g=git
alias ga='git add'
alias gcs='git commit --gpg-sign'
alias gd='git diff'

# ls
alias ls='ls --color=tty'
alias ll='ls -lahF'

# vim
alias vim=nvim
alias vi=nvim

# zathura
# Use x11 if run in wsl
if [[ $(grep -i icrosoft /proc/version) ]]; then
	alias zathura='GDK_BACKEND=x11 /usr/bin/zathura'
fi
