{ self, pkgs, ... }:

{
  imports = [
    ../../modules/darwin/base.nix
    ../../modules/darwin/nix.nix
    ../../modules/darwin/packages.nix
    ../../modules/darwin/homebrew.nix
  ];

  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6;

  nixpkgs.hostPlatform = "aarch64-darwin";
}
