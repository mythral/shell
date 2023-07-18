{ pkgs ? import <nixpkgs> { } }:

with pkgs; [
  # cli utils
  bat
  delta
  dua
  duf
  exa
  fd
  just
  lz4
  neovim
  procs
  pv
  ranger
  redis
  ripgrep
  sd
  tldr
  zsh
]
