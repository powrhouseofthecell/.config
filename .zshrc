# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"
# Q pre block. Keep at the top of this file.
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=${PATH}:/Users/znazir/mongodb-macos-aarch64-8.0.3/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="spaceship"
eval "$(starship init zsh)"
export EDITOR="nvim"
export VISUAL="nvim"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=( 
    git
    # zsh-autosuggestions
    zsh-syntax-highlighting
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# aliases

alias conf='nvim ~/.zshrc'
alias so='source ~/.zshrc'
alias rm=trash
alias ..='cd ..'
alias ...='cd ../..'
# alias c=clear
alias cfc='cat_file'
alias cdd='make_change_directory'
alias l='eza -lah --color=always --icons=always'
alias ls='eza -l --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias serve='python3 -m http.server'
alias opennote='nvim ~/Documents/genesis/Index/cli_notes.md'
alias client='change_to_clients'
alias office='change_to_office'
alias L='change_to_learning'
alias P='change_to_projects'
alias gs='git status'
alias gcp='configure_personal_user_for_git'
alias gcw='configure_work_user_for_git'
alias genesis='nvim ~/Documents/genesis/'
alias nf='cd ~ && nvim $(fzf -m --preview="bat --color=always {}")'
# alias sd="cd ~ && cd \$(find * -type d | fzf)"
# alias sd="cd ~ && cd \$(find . -path './Applications' -prune -o -path './Library' -prune -o -path '*/node_modules' -prune -o -type d -print | fzf --ignore-case)"
alias sd="cd ~ && cd \$(find ~/Desktop ~/Documents \( -path '*/node_modules' -o -path '*/.git' \) -prune -o -type d -print | fzf --ignore-case)"
alias gcr="create_gh_repo"
alias ip="ipconfig getifaddr en0"
alias dotfiles='git --git-dir=$HOME/Desktop/Zuhaib/.dotfiles --work-tree=$HOME'
alias clean='rm -rf .zsh_history .lesshst .cache/ .zcompdump-iQuasars-MacBook-Pro-5.9.zwc .zcompdump-iQuasars-MacBook-Pro-5.9 .npm/ .bash_history .DS_Store'

function configure_personal_user_for_git {
  git config user.name "powrhouseofthecell"
  git config user.email "theshahzuhaib96@gmail.com"
}

function configure_work_user_for_git {
  git config user.name "zuhaib-nazir"
  git config user.email "zuhaib.nazir@iquasar.com"
}

function change_to_clients {
  cd "/Users/znazir/Documents/Clients/$@"
}

function change_to_office {
  cd "/Users/znazir/Documents/Office/$@"
}

function change_to_projects {
  cd "/Users/znazir/Desktop/Zuhaib/Code/projects/$@"
}

function change_to_learning {
  cd "/Users/znazir/Desktop/Zuhaib/Code/learning/$@"
}

make_change_directory() {
    mkdir -p "$1" && cd "$1" || return
}

create_gh_repo() {
    gh repo create "$1" --private --source=. --remote=origin --push
}

cat_file() {
# pbcopy is only in macos
    cat "$1" | pbcopy
}

function note {
  echo "\`\`\`" >> $HOME/Documents/genesis/Index/cli_notes.md
  echo "💡 $(date)" >> $HOME/Documents/genesis/Index/cli_notes.md
  echo "\`\`\`" >> $HOME/Documents/genesis/Index/cli_notes.md
  echo "" >> $HOME/Documents/genesis/Index/cli_notes.md
  echo "> $@" >> $HOME/Documents/genesis/Index/cli_notes.md
  echo "---" >> $HOME/Documents/genesis/Index/cli_notes.md
  echo "" >> $HOME/Documents/genesis/Index/cli_notes.md
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/znazir/.bun/_bun" ] && source "/Users/znazir/.bun/_bun"

# Q post block. Keep at the bottom of this file.
source /Users/znazir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/znazir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"

# Added by Antigravity
export PATH="/Users/znazir/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/znazir/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/znazir/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/znazir/.antigravity/antigravity/bin:$PATH"
