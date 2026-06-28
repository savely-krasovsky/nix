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
    zsh-completions

    go
    nodejs_24
    pnpm
    kubectl
    k9s
    codex
  ];
}