{ pkgs, ... }:

{
  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/go/bin"
  ];

  home.packages = with pkgs; [
    bat
    bottom
    dive
    doggo
    duf
    dust
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
    xh
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
