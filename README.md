# dotfiles

Personal macOS configuration files and settings.

## 🚀 Features

- **Window Management**: [AeroSpace](https://github.com/nikitabobko/AeroSpace) - Tiling window manager with vim-style navigation
- **Status Bar**: [SketchyBar](https://github.com/FelixKratz/SketchyBar) - Custom macOS menu bar
- **Window Borders**: [JankyBorders](https://github.com/FelixKratz/JankyBorders) - Visual window focus indicators
- **Terminal**: [Ghostty](https://github.com/ghostty-org/ghostty) - Fast GPU-accelerated terminal
- **Terminal Multiplexer**: [Tmux](https://github.com/tmux/tmux) - Enhanced terminal workflow
- **Shell Prompt**: [Starship](https://starship.rs/) - Fast, customizable cross-shell prompt
- **Git TUI**: [Lazygit](https://github.com/jesseduffield/lazygit) - Terminal UI for git commands
- **System Info**: [Neofetch](https://github.com/dylanaraps/neofetch) - Command-line system information tool

## 📁 Structure

```
.
├── aerospace/              # AeroSpace configuration
├── borders/                # JankyBorders configuration
├── ghostty/                # Ghostty terminal config & themes
├── sketchybar/             # SketchyBar plugins & config
├── tmux/                   # Tmux configuration
├── lazygit/                # Lazygit settings
├── neofetch/               # Neofetch configuration
├── starship.toml           # Starship prompt config
├── dlv/                    # Delve debugger settings
├── wallpapers/             # Desktop wallpapers
└── finder-move.sh          # Finder utility script
```

## ⚙️ Installation

- Clone this repository:
   ```bash
   git clone git@github.com:steckoverflow/dotfiles.git ~/.config/dotfiles
   ```

   ```

## 🎨 Customization

### AeroSpace Keybindings

| Key | Action |
|-----|--------|
| `Alt + h/j/k/l` | Focus window (vim-style) |
| `Alt + Shift + h/j/k/l` | Move window |
| `Alt + 1-9` | Switch to workspace |
| `Alt + Shift + 1-9` | Move window to workspace |
| `Alt + v` | Toggle fullscreen |
| `Alt + /` | Toggle layout (tiles) |
| `Alt + e` | Enter service mode |

### Application Launchers

- `Alt + f` - Firefox Developer Edition
- `Alt + g` - Ghostty terminal
- `Alt + s` - Slack

## 📝 Notes

- Designed for macOS with Apple Silicon/Intel compatibility
- AeroSpace integrates with SketchyBar for workspace indicators
- Starship prompt shows OS, directory, git branch, and Python environment
- Custom window gaps and padding configured for clean aesthetics

## 📄 License

Personal configuration files - feel free to use and modify as needed.
