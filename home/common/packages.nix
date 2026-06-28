{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    jq
    ripgrep
    fd
    tree
    bat
    eza
    fzf
    starship

    go
    nodejs_24
    pnpm
    codex
  ];
}