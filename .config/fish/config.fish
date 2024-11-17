# XDG variables.
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CONFIG_DIRS /etc/xdg
set -gx XDG_RUNTIME_DIR "/run/user/$(id -u)"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Fix GPG returning 'Inappropriate ioctl for device'
set -gx GPG_TTY $(tty)

alias degit "git clone --depth=1"
alias reload "exec fish"

# Fixes from xdg-ninja
set -gx HISTFILE "$XDG_STATE_HOME/bash/history"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
alias wget "wget --hsts-file='$XDG_DATA_HOME/wget-hsts'"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx ANDROID_HOME "$XDG_DATA_HOME/android/sdk"
set -gx NDK_HOME "$ANDROID_HOME/ndk/$(ls -1 $ANDROID_HOME/ndk)"
set -gx ANDROID_USER_HOME "$XDG_DATA_HOME/android"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
alias mitmproxy "mitmproxy --set confdir=$XDG_CONFIG_HOME/mitmproxy"
alias mitmweb "mitmweb --set confdir=$XDG_CONFIG_HOME/mitmproxy"

# Path additions
fish_add_path "$CARGO_HOME/bin/"

function update
    paru -Syu
    flatpak update
    mise upgrade
    bun upgrade
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
