#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

rsync -a --delete \
  --exclude='BraveSoftware/' --exclude='discord/' --exclude='Code/' --exclude='Code - OSS/' \
  --exclude='VSCodium/' --exclude='Postman/' --exclude='manicode/' --exclude='mozilla/' \
  --exclude='opencode/' --exclude='JetBrains/' --exclude='gcloud/' --exclude='gh/' \
  --exclude='github-copilot/' --exclude='Kvantum/' --exclude='glab/' \
  --exclude='Cache/' --exclude='cache/' --exclude='CachedData/' --exclude='GPUCache/' \
  --exclude='Code Cache/' --exclude='logs/' --exclude='log/' --exclude='*.log' \
  --exclude='Service Worker/' --exclude='Local Storage/' --exclude='Session Storage/' \
  --exclude='IndexedDB/' --exclude='Crashpad/' --exclude='SingletonLock' \
  --exclude='wallpapers/' --exclude='firecrawl-cli/' --exclude='kdeconnect/' \
  --exclude='.git/' \
  "$HOME/.config/" config/

for f in .zshrc .zshenv .zprofile .bashrc .bash_profile .profile .gitconfig .gitignore_global .p10k.zsh .aliases .tmux.conf .Xresources .xinitrc; do
  [ -f "$HOME/$f" ] && cp -a "$HOME/$f" home/
done

git add -A
git commit -m "backup: $(date '+%Y-%m-%d %H:%M')" || { echo "nothing to commit"; exit 0; }
git push