{ self, pkgs, ... }:

{
  imports = [
    ../../modules/darwin/nix.nix
    ../../modules/darwin/packages.nix
    ../../modules/darwin/homebrew.nix
  ];

  system.primaryUser = "savely";

  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6;

  nixpkgs.hostPlatform = "aarch64-darwin";
}