{ ... }:

{
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };

    optimise.automatic = true;

    gc = {
      automatic = true;
      interval = { Weekday = 7; };
      options = "--delete-older-than 14d";
    };
  };
}