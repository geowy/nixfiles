# Nice prompt
export PS1="%F{green}%n@%m%f:%F{blue}%~%f%(!.%F{red}.)%#%f "
export RPS1="%t"

# history search
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
