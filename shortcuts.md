# Shortcuts

Cheat sheet for Ghostty, Lazygit and Neovim. Keep it in sync with the configs in this repo.

- `⌘` = Command, `⌥` = Option, `⌃` = Control, `⇧` = Shift
- Keyboard: Belgian AZERTY. `[` `]` `{` `}` `|` `@` need the **right** Option (the left one is Alt, see Ghostty).
- Last checked against: Ghostty 1.4.0, Lazygit 0.66.2, Neovim 0.12.

## Ghostty

Config: `ghostty/config.ghostty` (linked to `~/.config/ghostty/config.ghostty`). Reload with `⇧⌘,`.
List the real bindings: `ghostty +list-keybinds` (add `--default` for the built-in ones).

### My custom bindings

| Shortcut | Action |
| --- | --- |
| `⌘H` | Go to the split on the left |
| `⌘J` | Go to the split below |
| `⌘K` | Go to the split above |
| `⌘L` | Go to the split on the right |

Notes:
- `⌘H` is "Hide" in macOS and may be captured by the system before Ghostty. If so, use `⌥⌘H`.
- `⌘K` no longer clears the screen and `⌘J` no longer scrolls to the selection. Use `Ctrl+L` in the shell to clear.
- `macos-option-as-alt = left`: the left Option is Alt, the right Option types special characters.

### Windows, tabs, splits

| Shortcut | Action |
| --- | --- |
| `⌘N` | New window |
| `⌘T` | New tab |
| `⌘W` | Close the current split / tab / window |
| `⌥⌘W` | Close the tab |
| `⇧⌘W` | Close the window |
| `⌃⇥` / `⌃⇧⇥` | Next / previous tab |
| `⇧⌘[` / `⇧⌘]` | Previous / next tab (hard to type on AZERTY, prefer `⌃⇥`) |
| `⌘1` to `⌘8`, `⌘9` | Tab 1 to 8, last tab (on AZERTY: `⌘&`, `⌘é`, `⌘"`...) |
| `⌘D` | Split to the right |
| `⇧⌘D` | Split downwards |
| `⌥⌘ + arrow` | Go to the split in that direction |
| `⌃⌘ + arrow` | Resize the split |
| `⌃⌘=` | Equalize splits |
| `⇧⌘⏎` | Zoom the current split (press again to restore) |
| `⌘⏎` | Toggle fullscreen |

### Text, scrollback, search

| Shortcut | Action |
| --- | --- |
| `⌘C` / `⌘V` | Copy / paste |
| `⌘A` | Select all |
| `⇧ + arrow` | Adjust the selection |
| `⌘←` / `⌘→` | Start / end of the line |
| `⌥←` / `⌥→` | Previous / next word (left Option) |
| `⌘⌫` | Delete to the start of the line |
| `⌘↑` / `⌘↓` | Jump to the previous / next prompt |
| `⌘Home` / `⌘End` | Top / bottom of the scrollback |
| `⌘F` | Search (`⌘G` next, `⇧⌘G` previous, `Esc` close) |
| `⇧⌘J` | Paste the screen content as text |

### Misc

| Shortcut | Action |
| --- | --- |
| `⌘,` | Open the config file |
| `⇧⌘,` | Reload the config |
| `⇧⌘P` | Command palette |
| `⌘+` / `⌘-` | Increase / decrease the font size |
| `⌥⌘I` | Inspector |
| `⌘Q` | Quit |

## Lazygit

Config: `lazygit/config.yml` (linked to `~/Library/Application Support/lazygit/config.yml`). It is empty, so these are the **default** keys.
Open the full list inside Lazygit with `?` (on AZERTY: `⇧,`). Quit with `q`, close a prompt with `Esc`.

### Global

| Key | Action |
| --- | --- |
| `1` to `5` | Jump to a panel (status, files, branches, commits, stash) |
| `←` `→` or `h` `l` | Previous / next panel |
| `↑` `↓` or `j` `k` | Move in a list |
| `Enter` | Open / go deeper |
| `Esc` | Go back / close |
| `?` | Show the keybindings of the current panel |
| `/` | Filter the current list |
| `:` | Run a shell command (not for quitting) |
| `P` | Push |
| `p` | Pull |
| `q` | Quit |

### Files panel

| Key | Action |
| --- | --- |
| `Space` | Stage / unstage the file |
| `a` | Stage / unstage everything |
| `c` | Commit |
| `A` | Amend the last commit |
| `d` | Discard changes (asks first) |
| `e` | Edit the file |
| `s` | Stash |
| `i` | Add to `.gitignore` |

### Branches panel

| Key | Action |
| --- | --- |
| `Space` | Check out the branch |
| `n` | New branch |
| `d` | Delete the branch |
| `M` | Merge into the current branch |
| `r` | Rebase onto the branch |

### Commits panel

| Key | Action |
| --- | --- |
| `Enter` | See the files of the commit |
| `r` | Reword the commit message |
| `s` | Squash into the previous commit |
| `f` | Fixup into the previous commit |
| `d` | Drop the commit |
| `e` | Edit the commit (interactive rebase) |

## Neovim

Config: `nvim/` (linked to `~/.config/nvim`). Leader key: `Space`.
Plugins live one per file in `nvim/lua/plugins/`. General keymaps are in `nvim/lua/keymaps.lua`.

### My keymaps

| Key | Mode | Action |
| --- | --- | --- |
| `Esc` | Normal | Clear the search highlight |
| `-` | Normal | Open the parent directory (oil) |
| `Space e` | Normal | Open the file explorer (oil) |
| `Space f f` | Normal | Find files (telescope) |
| `Space f g` | Normal | Search text in the project (telescope, ripgrep) |
| `Space f b` | Normal | Open buffers (telescope) |
| `Space f h` | Normal | Neovim help (telescope) |
| `Space g g` | Normal | Open Lazygit in a floating window (`:LazyGit`) |

### Inside oil (file explorer)

You edit the directory like text, then save with `:w` to apply the changes (oil asks for confirmation).

| Key | Action |
| --- | --- |
| `Enter` | Open the file / directory |
| `-` | Go to the parent directory |
| `_` | Open the current working directory |
| `g.` | Toggle hidden files |
| `⌃P` | Preview the file |
| `⌃S` / `⌃H` | Open in a vertical / horizontal split |
| `⌃T` | Open in a new tab |
| `⌃L` | Refresh |
| `⌃C` | Close oil |
| `` ` `` | `:cd` to the directory |
| `gs` | Change the sort order |
| `gx` | Open with the system app |
| `g?` | Show oil's help |
| `dd`, `o`, edit a name | Delete, create (end the name with `/` for a folder), rename |

### Inside telescope

| Key | Action |
| --- | --- |
| `⌃N` / `⌃P` (or arrows) | Next / previous result |
| `Enter` | Open the selection |
| `⌃X` / `⌃V` / `⌃T` | Open in a horizontal split / vertical split / tab |
| `⌃U` / `⌃D` | Scroll the preview up / down |
| `Esc` or `⌃C` | Close |

### Options set in `nvim/lua/options.lua`

- Absolute line numbers (no relative numbers)
- 2-space indentation, spaces instead of tabs
- System clipboard shared with macOS
- Smart-case search with highlight, undo kept after closing a file
- Theme: catppuccin-mocha
