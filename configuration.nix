{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    openssh
    libfido2
  ];

  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "uninstall";

      autoUpdate = false;
      upgrade = false;

      extraEnv = {
        HOMEBREW_NO_ANALYTICS = "1";
        HOMEBREW_NO_ENV_HINTS = "1";
      };
    };

    brews = [
    ];

    casks = [
      "ghostty"
    ];
  };
}
