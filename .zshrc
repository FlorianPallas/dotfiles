eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh
export CHROME_EXECUTABLE=chromium

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/home/florian/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# dotfiles
alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# enable history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# local bin
export PATH="$PATH:/home/florian/.local/bin"

autoload -Uz compinit && compinit
