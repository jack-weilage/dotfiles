# `dotfiles`

This is a repository containing my dotfiles for my Arch machine, for use with GNU `stow`. The files are laid out _exactly_ as they would appear in the home directory, as I feel that the `dot-` prefix makes it more difficult to moves files into/out of the dotfiles repository.

## Prerequisites

You should probably have all the programs that these configs apply to, but there's no need for that!

The only hard-fast dependencies here are `git` (to download this repository) and `stow` (to set up the symlinks).

```sh
pacman -Sy git stow
```

## Installation

Installation is dead easy. Just clone this repository into a folder inside your home directory (e.g. ~/dotfiles), then run `stow .` from inside that folder! GNU `stow` will create all the symlinks you need.

```sh
git clone https://github.com/jack-weilage/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .
```
