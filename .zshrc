# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
#

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git macos)

source $ZSH/oh-my-zsh.sh

alias lm='eza -l --icons --no-user --group-directories-first  --time-style long-iso'
alias la='eza -la --icons --no-user --group-directories-first  --time-style long-iso'
alias le='eza -laiguU --group-directories-first  --time-style long-iso'

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/multiverse-neon.omp.json)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$HOME/.local/bin:$PATH
alias dotfiles='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME'
