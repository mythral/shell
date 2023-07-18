# -- ZSH/oh-my-zsh stuff --
export ZSH=$(nix-env -q --out-path oh-my-zsh | cut -d' ' -f3)/share/oh-my-zsh/
ZSH_THEME="josh"

# Automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Change auto update days. (Default 14)
export UPDATE_ZSH_DAYS=7

# Change the command execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  # zsh utils
  zsh-autosuggestions
  zsh-syntax-highlighting

  # aliases + completions
  fd
  httpie
  ripgrep

  # misc
  colored-man-pages 
)

source $ZSH/oh-my-zsh.sh

# -- Path Stuff --
export PATH=/opt:$PATH

# -- Completions, sourcing and similar --
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# -- Aliases --
alias ll="exa -l -a -T --level=1 --git"
alias j="just"
alias jr="just run"
alias je="just --edit"
alias jl="just --list"
alias vim="nvim"
alias e="vim"

alias logs="just logs"
alias up="just up"
alias down="just down"

alias w="watch -n 0.5"

export EDITOR=nvim
cd /root
