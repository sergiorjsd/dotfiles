# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

export ERL_AFLAGS="-kernel shell_history enabled"
