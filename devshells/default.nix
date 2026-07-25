{ inputs, system }:

let
  pkgs = inputs.nixpkgs.legacyPackages.${system};
in
{
  wails3 = import ./wails3.nix {
    inherit pkgs;
    nixgl = inputs.nixgl.packages.${system}.nixGLIntel;
  };
}
