if [ "$USERNAME" = "root" ]
then CARETCOLOR="red"
else CARETCOLOR="blue"
fi

local return_code="%(?..%{$fg[yellow]%}%? %{$reset_color%})"

PROMPT='%{${fg_bold[magenta]}%}%{$reset_color%}%2~$(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}%{${reset_color}%} » '

RPS1='$(vi_mode_prompt_info) ${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX=" [ "
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ● %{$fg[white]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ● %{$fg[white]%}%{$reset_color%}"

MODE_INDICATOR="%{$fg_bold[magenta]%}<%{$reset_color%}%{$fg[magenta]%}<<%{$reset_color%}"
