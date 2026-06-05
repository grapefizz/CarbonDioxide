export ZSH="$HOME/.oh-my-zsh"
plugins=(sudo extract git zsh-syntax-highlighting fzf-tab zsh-autosuggestions)
export HOMEBREW_NO_ENV_HINTS=1

export PATH=$PATH:/Users/ari/.spicetify
fpath+="$HOME/.zsh/zen"
autoload -Uz promptinit
promptinit
prompt zen

# Added by Antigravity
export PATH="/Users/ari/.antigravity/antigravity/bin:$PATH"
alias brew-sync='brew bundle dump --file=~/.config/Brewfile --force --no-vscode'
alias c="clear"

alias ls="eza --icons"
alias ll="eza --icons -l"
alias lh="eza --icons -a"

# bun completions
[ -s "/Users/ari/.bun/_bun" ] && source "/Users/ari/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init --cmd cd zsh)"

eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"

export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"
# Oxocarbon theme for fzf
export FZF_DEFAULT_OPTS='--height 40% --layout reverse --border --color="bg+:#262626,bg:#161616,spinner:#ff7eb6,hl:#42be65,fg:#dde1e6,header:#78a9ff,info:#be95ff,pointer:#ff7eb6,marker:#3ddbd9,fg+:#ffffff,prompt:#be95ff,hl+:#42be65"'

export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/Users/ari/.bun/bin:/Users/ari/.antigravity/antigravity/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/pkg/env/active/bin:/opt/pmk/env/global/bin:/opt/X11/bin:/Library/Apple/usr/bin:/Library/TeX/texbin:/Applications/VMware Fusion.app/Contents/Public:/usr/local/go/bin:/opt/homebrew/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/ari/.cargo/bin:/usr/ucb:/Users/ari/.spicetify"
