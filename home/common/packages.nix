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
    golangci-lint
    k9s
    kubectl
    nodejs_24
    pnpm
    yubikey-manager
  ];
}
