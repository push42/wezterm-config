# Push42 WezTerm Workspace

Tailored WezTerm configuration for the Push42 tooling stack. It pairs a neon glass aesthetic with automation that keeps Windows, WSL, and remote sessions feeling consistent while feeding my shell telemetry pipeline.

## Why It Exists
- Blend pro/play modes by seeding `P42_PROMPT_MODE` on GUI start and adjusting glass opacity after-hours.
- Drive consistent theming with a single `colors/custom.lua` palette and animated cursor timings.
- Collapse session noise with curated status bars, smarter tab labels, and a launch menu wired into my preferred shells.
- Ship background tooling that makes it trivial to randomize art, cycle collections, or enter a distraction-free focus mode.
- Auto-pick the best GPU adapter and keep font rendering crisp across Windows and WSL panes.

## Feature Highlights
- **After-hours smart dimming**: opacity and text glow soften automatically from 21:00–07:00 (see `config/appearance.lua`).
- **Mode-aware prompt seeding**: `events/gui-startup.lua` sets `P42_PROMPT_MODE` (`flow` by day, `focus` at night) so my PowerShell profile and fastfetch presets stay in sync.
- **Dynamic backdrops**: `utils/backdrops.lua` caches wallpaper metadata, supports randomization, fuzzy search, cycling, and focus glass toggles.
- **Launch workflows**: right-click the new-tab button for a multi-source launcher (default shells, WSL, SSH, Unix domains).
- **Signal-rich chrome**: `events/right-status.lua` renders time + battery using Nerdfonts glyphs, while `events/left-status.lua` surfaces leader/key-table state.
- **Adaptive tab titles**: tab icons react to admin/WSL/debug contexts, support manual naming, and expose unseen output counts via glyphs.

### Background Controls
```
Alt+/          random wallpaper
Alt+, Alt+.    cycle back / forward
Alt+Ctrl+/     fuzzy search
Alt+b          toggle focus glass (low-distraction)
```

### Tab Utilities
```
Alt+t              new tab (default domain)
Alt+Ctrl+t         new tab (WSL: ubuntu-fish)
Alt+0 / Alt+Ctrl+0 lock / unlock custom tab title
Alt+9              toggle tab bar visibility
```

## Installation
1. Install [WezTerm](https://wezfurlong.org/wezterm/installation.html). Tested with `20240203-110809-5046fc22` and newer.
2. Ensure **JetBrainsMono Nerd Font** (or update `config/fonts.lua` to your preferred family).
3. Clone the repo:
   ```powershell
   git clone https://github.com/push42/wezterm-config.git $HOME/.config/wezterm
   ```
4. Start WezTerm. On first launch the GUI event will maximize the window and seed `P42_PROMPT_MODE` for the active shell.

## Customize It
- **Shell domains**: update `config/domains.lua` with your WSL usernames, SSH targets, or remove unused entries.
- **Default launchers**: edit `config/launch.lua` to change the default shell args shown in the launcher/new-tab button.
- **Wallpapers**: drop images into `backdrops/` or point `utils/backdrops.lua` to another directory.
- **Color tweak**: tune the Aurora palette in `colors/custom.lua` or swap in a different color module.
- **Bindings**: `config/bindings.lua` lists every key table and action; adjust the `mod` map if you prefer Win/Cmd modifiers.

## Credits
This overhaul builds on the excellent groundwork by [Kevin Silvester](https://github.com/KevinSilvester/wezterm-config). Their project inspired this customization and many of the helper utilities.
