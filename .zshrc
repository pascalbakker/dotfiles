# My additions
#autoload -Uz compinit
#compinit
#setopt COMPLETE_ALIASES
#zstyle ':completion::complete:*' gain-privileges 1
alias vim="nvim"
#alias sbt="sbt -ivy "$XDG_DATA_HOME"/ivy2 -sbt-dir "$XDG_DATA_HOME"/sbt"
alias wget="wget --hsts-file="$XDG_CACHE_HOME/wget-hsts""
alias sudo="doas"

#alias surf="tabbed surf -e"
#source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey -s '^f' 'se\n'
# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt AUTO_CD

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Paths
export PATH=/home/pascal/.local/share/gem/ruby/2.7.0/bin:$PATH
export PATH=/home/pascal/.local/bin:$PATH
[ -f "/home/pascal/.ghcup/env" ] && source "/home/pascal/.ghcup/env" # ghcup-env

export JAVA_HOME='/usr/lib64/jvm/default'

alias doc='nvidia-docker-compose'
alias docl='doc logs -f --tail=100'

eval "$(pyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pascal/.config/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pascal/.config/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pascal/.config/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pascal/.config/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"


#Cleaning up home
export XDG_CONFIG_HOME='/home/pascal/.config'
export XDG_CACHE_HOME='/home/pascal/.cache'
export XDG_DATA_HOME='/home/pascal/.local/share'
export GOPATH="/home/pascal/go"
export IPYTHONDIR="/home/pascal/.config/jupyter"
export JUPYTER_CONFIG_DIR="/home/pascal/.config/jupyter"
export CABAL_DIR="$XDG_CACHE_HOME"/cabal
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CONDARC="$XDG_CONFIG_HOME/conda/condarc"
#export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export LEIN_HOME="$XDG_DATA_HOME"/lein
export STACK_ROOT="$XDG_DATA_HOME"/stack
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey, export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export SSB_HOME="$XDG_DATA_HOME"/zoom
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export HISTFILE="$XDG_DATA_HOME"/bash/history




