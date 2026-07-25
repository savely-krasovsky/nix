{ pkgs, ... }:

{
  xdg.configFile."distrobox/distrobox.conf".text = ''
    container_additional_volumes="/nix:/nix:ro"
  '';

  home.packages = with pkgs; [
    distrobox
  ];
}
