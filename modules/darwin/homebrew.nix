{ ... }:

{
  environment.systemPath = [
    "/opt/homebrew/bin"
    "/opt/homebrew/sbin"
  ];

  homebrew = {
    enable = true;
    enableZshIntegration = true;

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
      "codex-app"
      "element"
      "fastmail"
      "ghostty"
      "jetbrains-toolbox"
      "parallels"
      "podman-desktop"
      "prusaslicer"
      "reqable"
      "spotify"
      "telegram-desktop"
      "todoist-app"
    ];

    goPackages = [
      "github.com/savely-krasovsky/ssh-sk-rk-patcher"
      "github.com/wailsapp/wails/v3/cmd/wails3"
    ];
  };
}
