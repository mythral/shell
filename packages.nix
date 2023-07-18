{ pkgs ? import <nixpkgs> { } }:

with pkgs; [
  # cli utils
  bat
  delta
  dua
  duf
  exa
  git
  fd
  httpie
  just
  lz4
  neovim
  oh-my-zsh
  procs
  pv
  ranger
  ripgrep
  sd
  tldr
  zsh
  zoxide
]
