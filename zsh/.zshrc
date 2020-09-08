# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

EDITOR="nvim"

set -o vi

autoload -U colors && colors

# Load aliases and shortcuts if existent.
#[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
#[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# TODO: Figure out a better home for this
#[ -f ~/.twitch ] && . ~/.twitch

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export KEYTIMEOUT=1

# PS1="%B%{$fg[red]%}%{$fg[yellow]%}%n%{$fg[green]%} %{$fg[magenta]%}%~%{$fg[red]%}%{$reset_color%}$%b "
export PS1="➜ "
# export PS1="™ "
#export PS1="ⓑ "
# export PS1="ⓑ ™ "
# export PS1="ⓑ™ "
# export PS1="⒝ ™ "
# export PS1="⒝ Ęįģ ƞ"
# export PS1="$fg[cyan]⒝ $fg[red]Ę$fg[yellow]ģ$fg[green]į$fg[magenta]ƞ$reset_color%}%b "
# export PS1="$fg[cyan]⒝ $fg[red]ë$fg[yellow]ģ$fg[green]į$fg[magenta]ƞ$reset_color%}%b "

#
# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
