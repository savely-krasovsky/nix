{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    openssh
    libfido2
  ];
}