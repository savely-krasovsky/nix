{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    jq
    ripgrep
    fd
    tree

    openssh
    libfido2

    go
    nodejs_24
    pnpm
  ];
}