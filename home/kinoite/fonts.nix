{ pkgs, ... }:

{
  home.packages = with pkgs; [
    inter
    noto-fonts
    noto-fonts-color-emoji
  ];

  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = [
        "Inter"
        "Noto Sans"
      ];
      serif = [
        "Noto Serif"
      ];
      monospace = [
        "Noto Sans Mono"
      ];
      emoji = [
        "Noto Color Emoji"
      ];
    };

    antialiasing = true;
    hinting = "slight";
  };
}
