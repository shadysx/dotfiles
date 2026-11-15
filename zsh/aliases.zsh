# Shell aliases, sourced from ~/.zshrc.
# Each block is guarded so the file is safe on machines where a tool is missing.

# eza: modern replacement for ls (brew install eza)
if command -v eza >/dev/null 2>&1; then
  alias ls="eza --icons --group-directories-first"
  alias ll="eza -l --icons --git --group-directories-first"
  alias la="eza -la --icons --git --group-directories-first"
  alias lt="eza --tree --level=2 --icons --group-directories-first"
  alias lta="eza --tree --level=2 -a --icons --group-directories-first --ignore-glob='.git|node_modules'"
fi
