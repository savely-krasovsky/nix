{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    eza
    fd
    fzf
    gh
    git
    jq
    nano
    ripgrep
    starship
    tokei
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