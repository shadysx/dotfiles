# Dotfiles

Personal configs for macOS and Linux: Ghostty, Neovim, Lazygit, Starship and a few zsh aliases.
Keybindings are listed in [`shortcuts.md`](shortcuts.md).

## What's inside

| Folder | Tool | Linked to |
|---|---|---|
| `ghostty/config.ghostty` | Ghostty (terminal) | `~/.config/ghostty/config.ghostty` |
| `nvim/` | Neovim | `~/.config/nvim` |
| `lazygit/config.yml` | Lazygit | `~/Library/Application Support/lazygit/config.yml` |
| `starship/starship.toml` | Starship (prompt) | `~/.config/starship.toml` |
| `zsh/aliases.zsh` | zsh aliases (eza) | sourced from `~/.zshrc`, not linked |

## 1. Install the tools

Requires [Homebrew](https://brew.sh).

```sh
# Terminal
brew install --cask ghostty

# Editor and its dependencies
brew install neovim
brew install lazygit      # used by Neovim (lazygit.nvim) and on its own

# Shell
brew install starship     # prompt
brew install eza          # modern ls, used by the aliases
brew install fzf          # fuzzy finder (Ctrl+R, Ctrl+T, Alt+C)
brew install fd           # optional: faster file listing for fzf
```

### Fonts (optional)

Ghostty bundles a Nerd Font symbols fallback, so icons usually work out of the box.
If some icons show up as empty squares, install a Nerd Font and set it in Ghostty:

```sh
brew install --cask font-jetbrains-mono-nerd-font
```

```
# ghostty/config.ghostty
font-family = JetBrainsMono Nerd Font
```

## 2. Clone the repo

The aliases are sourced from this exact path, so clone it here:

```sh
mkdir -p ~/projects
git clone https://github.com/shadysx/dotfiles.git ~/projects/dotfiles
```

## 3. Create the symlinks

If a target already exists, `ln` fails: move or delete the old file first.

```sh
DOTFILES=~/projects/dotfiles

mkdir -p ~/.config/ghostty "$HOME/Library/Application Support/lazygit"

ln -s "$DOTFILES/ghostty/config.ghostty" ~/.config/ghostty/config.ghostty
ln -s "$DOTFILES/nvim"                   ~/.config/nvim
ln -s "$DOTFILES/lazygit/config.yml"     "$HOME/Library/Application Support/lazygit/config.yml"
ln -s "$DOTFILES/starship/starship.toml" ~/.config/starship.toml
```

## 4. Hook into zsh

Add this to the end of `~/.zshrc`:

```sh
# Versioned aliases
[ -f "$HOME/projects/dotfiles/zsh/aliases.zsh" ] && source "$HOME/projects/dotfiles/zsh/aliases.zsh"
[ -f "$HOME/projects/dotfiles/zsh/fzf.zsh" ] && source "$HOME/projects/dotfiles/zsh/fzf.zsh"

# Prompt
eval "$(starship init zsh)"
```

Then reload with `source ~/.zshrc`.

`zsh/aliases.zsh` checks that `eza` exists before defining `ls`, `ll`, `la`, `lt` and `lta`,
so it is safe on a machine without eza.

## 5. First launch

1. Quit Ghostty fully (`Cmd + Q`) and reopen it. Some options, like window padding, only apply to new windows.
2. Open `nvim`. The plugin manager ([lazy.nvim](https://github.com/folke/lazy.nvim)) installs itself and the plugins on first start.
3. Run `:checkhealth` in Neovim if something looks wrong.

## Linux (Debian/Ubuntu, KDE)

Same repo, same configs. Differences with macOS:

```sh
sudo apt install zsh neovim lazygit fzf eza fd-find
ln -s "$(command -v fdfind)" ~/.local/bin/fd   # Debian names the fd binary fdfind
chsh -s "$(command -v zsh)"                     # then log out and back in
curl -sS https://starship.rs/install.sh | sh    # if starship is not packaged
```

Symlinks: identical, except Lazygit lives in `~/.config/lazygit/config.yml`:

```sh
DOTFILES=~/projects/dotfiles
mkdir -p ~/.config/ghostty ~/.config/lazygit
ln -s "$DOTFILES/ghostty/config.ghostty" ~/.config/ghostty/config.ghostty
ln -s "$DOTFILES/nvim"                   ~/.config/nvim
ln -s "$DOTFILES/lazygit/config.yml"     ~/.config/lazygit/config.yml
ln -s "$DOTFILES/starship/starship.toml" ~/.config/starship.toml
```

Ghostty on Linux:
- `super` is the Windows key. Its built-in Linux shortcuts use `Ctrl+Shift`, so the config binds `super+t/d/shift+d/w` explicitly to match macOS.
- KDE uses some `Meta` (Super) shortcuts by default: free the ones that clash (`Meta+D`, `Meta+W`, `Meta+T`, `Meta+L`) in System Settings → Shortcuts.
- `macos-*` options are ignored on Linux, `gtk-*` options are ignored on macOS.

## Useful commands

```sh
ghostty +validate-config                 # check the Ghostty config for errors
ghostty +list-keybinds                   # list the active Ghostty keybindings
starship preset --list                   # list Starship presets
starship preset tokyo-night -o ~/.config/starship.toml --force   # overwrite the prompt config (writes into this repo through the symlink)
```

Ghostty reloads its config with `Cmd + Shift + ,`.

## Notes

- Because of the symlinks, editing a file in `~/.config` edits the file in this repo. Commit from `~/projects/dotfiles`.
