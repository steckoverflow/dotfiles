#!/usr/bin/env bash
set -euo pipefail

CONFIG_DIR="${HOME}/.config"
DOTFILES_DIR="${CONFIG_DIR}/dotfiles"

sync() {
    local src="$1"
    local dst="$2"
    local extra_excludes="${3:-}"

    local excludes=(--exclude='.git' --exclude='.DS_Store')
    if [[ -n "$extra_excludes" ]]; then
        IFS=',' read -ra _extra <<< "$extra_excludes"
        for _e in "${_extra[@]}"; do
            excludes+=(--exclude="$_e")
        done
    fi

    if [[ ! -d "$src" ]]; then
        echo "  ⚠️  Skipping $(basename "$src") (not found)"
        return
    fi

    mkdir -p "$dst"
    rsync -a "${excludes[@]}" "${src}/" "${dst}/"
    echo "  ✅ $(basename "$src")/"
}

echo "📦 Syncing into ${DOTFILES_DIR}"

sync "${CONFIG_DIR}/aerospace" "${DOTFILES_DIR}/aerospace"
sync "${CONFIG_DIR}/borders"   "${DOTFILES_DIR}/borders"
sync "${CONFIG_DIR}/tmux"      "${DOTFILES_DIR}/tmux"      "plugins/"
sync "${CONFIG_DIR}/ghostty"   "${DOTFILES_DIR}/ghostty"
sync "${CONFIG_DIR}/scripts"   "${DOTFILES_DIR}/scripts"

echo "✅ Done!"
