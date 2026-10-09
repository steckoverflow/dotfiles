# Latte Left Rail

A Catppuccin Latte adaptation of FelixKratz's SketchyBar configuration at
`7cef83fc577bb8853c01d6aae66fdc6625feb761`, using AeroSpace and the existing widgets.

- Workspaces and the focused app stack at the top.
- CPU, disk, memory, Slack and the 24-hour clock stack at the bottom.
- Hover over any tile for details. Click a workspace to switch to it.
- Colors live in `colors.sh`. Status glyphs use Hack Nerd Font; install it with
  `brew install --cask font-hack-nerd-font` if icons render as missing characters.

Workspace icons are centered in place of the workspace numbers: 1 terminal, 2 browser,
3 chat, 4 notes, 5 misc, 8 music, and 9 messages. Workspaces 6, 7, and any unmapped
workspaces remain text-only. Edit the workspace `case` in `sketchybarrc` to change
the mapping. Hover details retain the workspace number.

Each workspace has a Catppuccin Latte accent: 1 green, 2 blue, 3 mauve, 4 yellow,
5 peach, 6 teal, 7 lavender, 8 red, and 9 pink. Inactive tiles have tinted backgrounds
and accent-colored icons and borders; the focused tile uses a solid accent fill
and a thicker border. Edit the color `case` in `plugins/aerospace.sh` to change
these accents.

The rail is 72 pixels wide with a 6-pixel left margin. Reserve at least 84 pixels
in AeroSpace's existing `[gaps]` section to leave space for tiled windows:

```toml
outer.left = 84
```

Keep any existing per-monitor gap rules when adjusting this value. The bar does
not modify AeroSpace configuration. Existing `aerospace_workspace_change` events
are supported; five-second polling also keeps workspace highlighting current.

Reload with `sketchybar --reload`. SketchyBar 2.24.0 supports `position=left`,
although its bar query reports `top` for left/right positions in that release.
The `height` property controls the width of a vertical bar.
