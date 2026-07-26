{ pkgs, ... }:

{
  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/go/bin"
  ];

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

    beads
    codex
    k9s
    kubectl
    nodejs_22
    pnpm
    yubikey-manager
  ];
}
