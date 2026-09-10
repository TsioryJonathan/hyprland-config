# hyprland-config

Backup de mes dotfiles Hyprland / HyDE (Waybar, hypr, etc.).

## Structure

- `config/` : contenu de `~/.config/` (hors caches, wallpapers et secrets)
- `home/`  : dotfiles du home (`~/.zshrc`, `~/.bashrc`, `~/.gitconfig`, ...)

## Restauration

```sh
cp -a config/. ~/.config/
cp -a home/.   ~/
```

## Exclusions volontaires

Wallpapers HyDE, caches navigateurs/Electron, et fichiers de secrets
(`*credential*`, `*.pem`, `firecrawl-cli/`, `kdeconnect/`).

## Mise a jour du backup

```sh
# depuis ~/.config
rsync -a --delete --exclude-from=<(grep -vE '^(#|$)' ~/hyprland-config/.gitignore) ~/.config/ ~/hyprland-config/config/
```