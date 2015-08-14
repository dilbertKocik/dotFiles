iGreen=$FG[046]
iRed=$FG[196]
iCyan=$FG[014]
iWhite=$FG[015]

PROMPT=$'%{$iGreen%}%/%{$reset_color%}$(git_prompt_info)
%{$iRed%}>%{$reset_color%} '

RPROMPT='%{$iWhite%}[%T]%{$reset_color%}'

PROMPT2="%{$iRed%}_> %{$reset_color%}"

GIT_CB=""
ZSH_THEME_SCM_PROMPT_PREFIX="%{$iWhite%}:%{$iCyan%}"
ZSH_THEME_GIT_PROMPT_PREFIX=$ZSH_THEME_SCM_PROMPT_PREFIX$GIT_CB
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$iRed%}✗%{$iCyan%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$iGreen%}✓%{$iCyan%}"
