{
  description = "Personal MacBook Pro";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-26.05-darwin";

    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, ... }: {
    darwinConfigurations."MacBook-Pro-Savely" =
      nix-darwin.lib.darwinSystem {
        modules = [
          ./hosts/macbook
        ];

        specialArgs = {
          inherit self inputs;
        };
      };
  };
}