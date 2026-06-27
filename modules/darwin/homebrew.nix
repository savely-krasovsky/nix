{ ... }:

{
  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "uninstall";
      autoUpdate = true;
      upgrade = true;

      extraEnv = {
        HOMEBREW_NO_ANALYTICS = "1";
        HOMEBREW_NO_ENV_HINTS = "1";
      };
    };

    brews = [ ];

    casks = [
      "ghostty"
      "brave-origin"
      "bitwarden"
      "jetbrains-toolbox"
      "telegram-desktop"
      "todoist-app"
      "fastmail"
    ];
  };
}