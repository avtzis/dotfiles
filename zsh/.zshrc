# Powerlevel 10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Startup
krabby random

# Zinit
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Plugins
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-completions
# zinit light Aloxaf/fzf-tab
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

# Snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::aliases
zinit snippet OMZP::copybuffer
zinit snippet OMZP::dirhistory
zinit snippet OMZP::extract
zinit snippet OMZP::safe-paste

# Autoloads
autoload -Uz compinit && compinit
zinit cdreplay -q

# Options
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HISTDUP=erase
setopt autocd
setopt extendedglob
setopt nomatch
setopt notify
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

unsetopt beep

# Styling
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS-COLORS}"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Aliases
alias zshconfig="vim ~/.zshrc"
alias hyprconfig="vim ~/.config/hypr/hyprland.conf"
alias nixconfig="sudo vim /etc/nixos/configuration.nix"
alias rebuild="sudo nixos-rebuild switch"
alias rb="rebuild"
alias q="exit"
alias reload="source ~/.zshrc"
alias rr="reload"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias nv="nvim"
alias j="z"

# Shell Integrations
# eval "$(fzf --zsh)"
# eval "$(zoxide init zsh)"

# Keybinds
#bindkey -e
bindkey '^H' backward-kill-word

# Prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

