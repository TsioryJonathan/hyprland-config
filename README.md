# hyprland-config

Backup of my Hyprland / HyDE dotfiles (Waybar, hypr, etc.).

## Structure

- `config/` : contents of `~/.config/` (excluding caches, wallpapers and secrets)
- `home/`  : home dotfiles (`~/.zshrc`, `~/.bashrc`, `~/.gitconfig`, ...)

## Restore

```sh
cp -a config/. ~/.config/
cp -a home/.   ~/
```

## Intentional exclusions

HyDE wallpapers, browser/Electron caches, and secret files
(`*credential*`, `*.pem`, `firecrawl-cli/`, `kdeconnect/`).

## Updating the backup

The easiest way is to run the sync script:

```sh
~/hyprland-config/sync.sh
```

It re-syncs `~/.config`, refreshes home dotfiles, commits and pushes.

Manual equivalent:

```sh
rsync -a --delete --exclude-from=<(grep -vE '^(#|$)' ~/hyprland-config/.gitignore) ~/.config/ ~/hyprland-config/config/
```