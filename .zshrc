# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# Basic options
setopt CORRECT              # spelling correction for commands
setopt NO_BEEP              # silence beeps

# Completion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # case-insensitive

# Prompt (simple: user@host cwd $)
PROMPT='%n@%m %1~ $ '

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias n='nvim'
alias mount-MOVR='sudo systemctl start home-james-Projects-MOVR.mount'
alias umount-MOVR='sudo systemctl stop home-james-Projects-MOVR.mount'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'

# Safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# === Path (add your custom bins here) ===
export PATH="$HOME/bin/.local/scripts:$PATH"

# === Optional: Load local overrides ===
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
