{ ... }:

{
  environment.systemPath = [
    "/opt/homebrew/bin"
    "/opt/homebrew/sbin"
  ];

  homebrew = {
    enable = true;

    onActivation = {
      cleanup = "zap";
      autoUpdate = false;
      upgrade = false;

      extraEnv = {
        HOMEBREW_NO_ANALYTICS = "1";
        HOMEBREW_NO_ENV_HINTS = "1";
      };
    };

    brews = [
      "go"
    ];

    casks = [
      "bitwarden"
      "brave-origin"
      "chatgpt"
      "coteditor"
      "element"
      "fastmail"
      "ghostty"
      "jetbrains-toolbox"
      "moonlight"
      "parallels"
      "plex"
      "podman-desktop"
      "prusaslicer"
      "reqable"
      "spotify"
      "telegram-desktop"
      "todoist-app"
      "yubico-authenticator"
    ];

    goPackages = [
      "github.com/savely-krasovsky/ssh-sk-rk-patcher"
      "github.com/wailsapp/wails/v3/cmd/wails3"
    ];
  };
}
