{ pkgs, lib, config, ... }:

{
  imports = [
    ../common/zsh.nix
    ../common/starship.nix
    ../common/git.nix
    ../common/packages.nix
  ];

  home.username = "savely";
  home.homeDirectory =
    if pkgs.stdenv.isDarwin
    then "/Users/savely"
    else "/home/savely";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
