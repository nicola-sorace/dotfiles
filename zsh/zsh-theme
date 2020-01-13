local ret_status="%(?:%{$fg[magenta]%}$:%{$fg[red]%}$)"

local context="%{$fg[blue]%}[%{$fg[cyan]%}$(whoami)%{$fg[blue]%}@$(hostname)]"

PROMPT='${context}$(git_prompt_info)%{$fg[blue]%}: %{$fg[yellow]%}%5(c:...:)%3c%{$reset_color%} ${ret_status} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$fg[green]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="]"
