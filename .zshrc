# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created on 2025-05-1

# === use powerlevel10k as prompt ===
source ~/.p10k/powerlevel10k.zsh-theme

# === Use zinit to load plugins ===
source ~/.zinit/bin/zinit.zsh

# Autosuggestions and syntax highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

# === Custom Aliases ===
alias c='clear'
alias l='clear && eza -G --across --group-directories-first --icons=auto'

alias dotsave='~/dotfiles/dotfiles_sync.sh'
alias cdhypr='cd ~/.config/hypr/'
alias cdwaybar='cd ~/.config/waybar/'

# replace cat with bat
alias cat='bat'
alias ocat='/bin/cat'

# replace ls with eza
alias ls='eza --group-directories-first --all --long --tree --level=2 --icons=auto'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
