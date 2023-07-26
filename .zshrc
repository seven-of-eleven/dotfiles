# Aliases #############################
alias h='history 50'
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias j=jobs
alias l='ls -lah'
alias la='ls -a'
alias lf='ls -Fa'
alias ll='ls -lh'
alias ls=lsd
alias lsa='ls -lah'
alias lt='ls -tlr'
alias md='mkdir -p'
alias messages='open -a /System/Applications/Messages.app'
alias neofetch='neofetch |lolcat'
alias nnn='nnn -e'
alias rd=rmdir
alias safari='open -a /Applications/Safari.app'
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias tkss='tmux kill-session -t'
alias tksv='tmux kill-server'
alias tl='tmux list-sessions'
alias tmuxconf='$EDITOR $ZSH_TMUX_CONFIG'
alias ts='tmux new-session -s'
alias unifi='open https://192.168.3.1'
alias weather='curl http://wttr.in/hamilton'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# alias _='sudo '
# alias afind='ack -il'
alias clr=clear
alias diff='diff --color'
alias digitalocean='open https://www.digitalocean.com'
alias egrep='egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias fgrep='fgrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
#######################################
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi
# Added in for Python
export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"
# Added in for NodeJS and nnn file manager
export PATH="/usr/local/opt/node@16/bin:$PATH"
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;i:!qlmanage -p $nnn'
export NNN_FCOLORS='0000E6310000000000000000'
# lines below for fzf terminal searching - hankvanv
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd -t f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
# added so alt c is bound properly instead of 'ç'
bindkey "ç" fzf-cd-widget
export PATH="/usr/local/sbin:$PATH"
# use starship terminal prompt
eval "$(starship init zsh)"
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
