# Dotfiles

Configs for Ghostty, Lazygit and Neovim, linked into place with symlinks:

- `ghostty/config.ghostty` -> `~/.config/ghostty/config.ghostty`
- `lazygit/config.yml` -> `~/Library/Application Support/lazygit/config.yml`
- `nvim/` -> `~/.config/nvim`

## Keep `shortcuts.md` up to date

Whenever you add, change or remove a keybinding in any of these configs (Ghostty `keybind`, Lazygit `keybinding`, Neovim keymaps or a plugin's `keys`), update `shortcuts.md` in the same change. Check the real bindings rather than relying on memory (`ghostty +list-keybinds`, `?` in Lazygit, `:map` in Neovim).

## Conventions

- Comments and `desc` fields in Neovim Lua files are written in English.
- The keyboard is Belgian AZERTY: avoid bindings that need `[`, `]`, `{`, `}` or digits without Shift.
- Do not run git commands (commit, push) unless asked.
