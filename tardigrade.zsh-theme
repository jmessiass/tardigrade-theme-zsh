#!/usr/bin/env zsh

# Show colors
# - spectrum_ls 
# %{$FG[255]%}

# Use default colors
# %{$fg[magenta]%}

# Bold
# %{$fg_bold[white]%}


export VIRTUAL_ENV_DISABLE_PROMPT=1

# Colors
COLOR_1=%{$FG[255]%} # White
COLOR_2=%{$FG[228]%} # Yellow
COLOR_3=%{$FG[198]%} # Red
COLOR_4=%{$FG[118]%} # Green
COLOR_5=%{$FG[014]%} # Blue

CLEAR=%{$reset_color%}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo $COLOR_1'('$COLOR_5`basename $VIRTUAL_ENV`$COLOR_1') '
}

function ruby_info {
    echo $(rvm_prompt_info)
}

function user {
    echo $COLOR_4%n$COLOR_1:
}

function dir {
    echo $COLOR_2%~
}

PROMPT='$(ruby_info)$(virtualenv_info)$(user) $(dir)$(git_prompt_info)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="$CLEAR: $COLOR_3"
ZSH_THEME_GIT_PROMPT_DIRTY="${COLOR_5}☀"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_RVM_PROMPT_PREFIX="$COLOR_1($COLOR_3"
ZSH_THEME_RVM_PROMPT_SUFFIX="$COLOR_1) $CLEAR"
