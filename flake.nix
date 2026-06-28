{
  description = "Savely systems";

  inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
      darwin.url = "github:nix-darwin/nix-darwin";
      darwin.inputs.nixpkgs.follows = "nixpkgs";
      home-manager.url = "github:nix-community/home-manager";
    };

  outputs = inputs@{
    self,
    nixpkgs,
    home-manager,
    darwin,
    ...
  }: {
    darwinConfigurations.savely-macbook =
      darwin.lib.darwinSystem {
        modules = [
          ./hosts/macbook

          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.savely = import ./home/savely;
          }
        ];

        specialArgs = {
          inherit self inputs;
        };
      };
  };
}
