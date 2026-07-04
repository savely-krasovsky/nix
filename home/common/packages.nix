{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    eza
    fd
    fzf
    git
    jq
    nano
    ripgrep
    starship
    tree
    zsh-completions

    codex
    go
    k9s
    kubectl
    nodejs_22
    pnpm
    yubikey-manager
  ];
}