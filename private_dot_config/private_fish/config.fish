# XDG variables.
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_DATA_DIRS /usr/local/share
set -gx XDG_CONFIG_DIRS /etc/xdg
set -gx XDG_RUNTIME_DIR "/run/user/$(id -u)"
# Overrides.
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup" # Override rustup
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo" # Override cargo
set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm" # Override PNPM
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg" # Override gnupg
set -gx LESSHISTFILE "$XDG_STATE_HOME/less/history" # Override less
# set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history" # Override node
# Environment variables.
set -gx BUN_INSTALL "$HOME/.bun"
set -gx GSETTINGS_SCHEMA_DIR "/usr/share/glib-2.0/schemas"
set -gx EDITOR (which nvim || which vim || which vi)
set -gx BROWSER /usr/bin/firefox

# PATH additions.
fish_add_path "$HOME/.local/bin" # Add local bin
fish_add_path "$CARGO_HOME/bin" # Add Rust
fish_add_path "$PNPM_HOME" # Add PNPM
fish_add_path "$BUN_INSTALL/bin" # Add Bun
fish_add_path "$XDG_DATA_HOME/git-fuzzy/bin" # Add git-fuzzy
fish_add_path "$XDG_DATA_HOME/rtx/bin" # Add rtx

# Aliases.
alias reload "exec fish"
alias c clear
alias cd z
alias wget "wget --hsts-file='$XDG_DATA_HOME/wget-hsts'"
alias l "exa --icons --git --git-ignore --group-directories-first --oneline --classify"
alias la "l --all --long --header"
alias record "asciinema rec temp.cast && agg --cols 80 --rows 24 temp.cast out.gif && rm temp.cast"

# Update all installed 
function update
    # Basic system updates.
    sudo apt update
    sudo apt upgrade
    sudo apt autoremove
    # Desktop app updates.
    sudo snap refresh
    # Fisher prompt update.
    fisher update
    # Rust toolchain update.
    rustup update
    # Update fzf, zoxide, node, etc.
    rtx upgrade
    # Bun update.
    bun upgrade
    # Nvim update
    # nvim --headless +MasonUpdate +MasonInstallAll +TSUpdate
end
