# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

for config (~/.config/zsh/*.zsh) source $config

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Added by Windsurf
export PATH="/Users/vector/.codeium/windsurf/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vector/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vector/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vector/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vector/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/vector/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"
