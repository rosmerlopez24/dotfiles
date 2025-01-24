# Source Prezto ----------------------------------------
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval "$(starship init zsh)"

# Custom Alias ------------------------------------------------
alias df='duf'
alias cat='bat'
alias ip='ip --color=auto'
alias mpc='mpc --host=localhost --port=6600'
alias tree="exa --group-directories-first --tree --icons"
alias ls='exa --group-directories-first --header --icons --git'
alias dotfiles='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias mirrorlist='sudo reflector \
  --verbose \
  --latest 30 \
  --country US \
  --connection-timeout 5 \
  --download-timeout 10 \
  --protocol http,https \
  --sort rate \
  --save /etc/pacman.d/mirrorlist'
