{ ... }:

{
  xdg.configFile."konsolerc" = {
    force = true;
    text = ''
      [Desktop Entry]
      DefaultProfile=HomeManager.profile

      [General]
      ConfigVersion=1

      [UiSettings]
      ColorScheme=
    '';
  };

  xdg.dataFile."konsole/HomeManager.profile".text = ''
    [Appearance]
    Font=JetBrainsMono Nerd Font Mono,11,-1,5,50,0,0,0,0,0

    [General]
    Name=Home Manager
    Parent=FALLBACK/
  '';
}
