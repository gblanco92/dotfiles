# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew history history-substring-search terminalapp)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
alias vim='nvim'

# Autocomplete autocomplete for .. special dir
zstyle ':completion:*' special-dirs true
zstyle ':completion:*files' ignored-patterns \
  '*?.a' '*?.out' '*?.o' '*?.so' '*?.exe' '*?.dll'  \
  '*\~' '*?.bak' '*?.pyc' '*?.swp' '*?.tmp' \
  '*?.zip' '*?.tar' '*?.gz' '*?.rar' '*?.bzip' '*?.7z' \
  '*?.git' '*?.svn' '*?.hg' '*?.pdf' '*?.ps' \
  '*?.bmp' '*?.gif' '*?.ico' '*?.jpg' '*?.png' \
  '*?.aux' '*?.bbl' '*.fls' '*?.log' '*?.toc' '*?.brf' '*?.sig'
