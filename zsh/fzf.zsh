# fzf setup, sourced from ~/.zshrc (brew install fzf).
# Guarded so the file is safe on machines where fzf is missing.

if command -v fzf >/dev/null 2>&1; then
  # Key bindings (Ctrl+R history, Ctrl+T files, Alt+C cd) and completion
  source <(fzf --zsh)

  # Look and feel
  export FZF_DEFAULT_OPTS="--height 40% --layout reverse --border --info inline"

  # Use fd for file listing when available: faster and respects .gitignore
  if command -v fd >/dev/null 2>&1; then
    export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git"
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git"
  fi

  # Previews: eza tree for directories (Alt+C), file contents for Ctrl+T
  if command -v eza >/dev/null 2>&1; then
    export FZF_ALT_C_OPTS="--preview 'eza --tree --level=2 --icons --color=always {}'"
  fi
  export FZF_CTRL_T_OPTS="--preview 'head -n 50 {}'"
fi
