# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	aliases
	#colored-man-pages
	copypath
	copyfile
	cp
	dirhistory
	extract
	safe-paste
	web-search
	autojump
	docker
	copybuffer
	sudo
	history

	#custom
	zsh-syntax-highlighting
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# FPATH
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Custom Variables
export BACKTICK='`'

# Custom Keybindings
bindkey '^H' backward-kill-word

# Colored Manpages
source $ZSH/manpages.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="nvim ~/.zshrc"
alias hyprconfig="nvim ~/.config/hypr/hyprland.conf"
alias wbconfig="nvim ~/.config/waybar/config"
alias wbstyle="nvim ~/.config/waybar/style.css"
alias nvc="nvim ~/.config/nvim/init.vim"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias pacin="sudo pacman -S"
alias pacout="sudo pacman -R"
alias paclean="sudo pacman -Sc"
alias pacorph="sudo pacman -Qtdq | sudo pacman -Rns -"
alias sui="sudo pacman -Syu && yay -Syu && paclean"
alias yayin="yay -S"
alias payin='yayin'
alias yayout='yay -R'
alias q='exit'
alias pokemon='pokemon-colorscripts -r'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lst='ls --tree'
alias clipboard='wl-copy'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias nv='nvim'
alias ntua='sudo openvpn ~/.openvpn/ntua.ovpn'
alias nf='neofetch'
alias clear="printf '\033[2J\033[3J\033[1;1H'"

# Startup
pokemon

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2023-10-16 15:02:45
export PATH="$PATH:/home/avtzis/.local/bin"

# Append PATH Utility Function
# Append "$1" to $PATH when not already in.
append_path () {
  case ":$PATH:" in
    *:"$1":*)
      ;;
    *)
      PATH="${PATH:+$PATH:}$1"
  esac
}
