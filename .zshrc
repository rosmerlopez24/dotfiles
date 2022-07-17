# Source Prezto ----------------------------------------
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Custom Alias ------------------------------------------------
alias cat='bat'
alias ip='ip --color=auto'
alias mpc='mpc --host=localhost --port=8000'
alias tree="exa --group-directories-first --tree --icons"
alias ls='exa --group-directories-first --header --icons --git'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias mirrorlist='sudo reflector \
  --verbose \
  --latest 20 \
  --country US \
  --connection-timeout 5 \
  --download-timeout 30 \
  --protocol https \
  --sort rate \
  --save /etc/pacman.d/mirrorlist'
