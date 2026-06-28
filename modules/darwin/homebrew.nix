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
      "bitwarden"
      "brave-origin"
      "codex-app"
      "fastmail"
      "ghostty"
      "jetbrains-toolbox"
      "prusaslicer"
      "spotify"
      "telegram-desktop"
      "todoist-app"
    ];
  };
}