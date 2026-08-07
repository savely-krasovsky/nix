{ pkgs, ... }:

{
  imports = [
    ../common/zsh.nix
    ../common/git.nix
    ../common/ssh.nix
    ../common/fzf.nix
    ../common/starship.nix
    ../common/packages.nix
  ];

  home.username = "savely";
  home.homeDirectory =
    if pkgs.stdenv.isDarwin
    then "/Users/savely"
    else "/home/savely";

  home.stateVersion = "26.05";

  home.file."Work/.envrc".text = ''
    export GOPRIVATE=gitlab.ozon.ru
    export GOPROXY=https://goproxy.s.o3.ru
    export GOSUMDB=off
  '';

  xdg.configFile."nano/nanorc".text = ''
    set autoindent
    set linenumbers
    set minibar
    set mouse
    set tabsize 4

    include "${pkgs.nano}/share/nano/*.nanorc"
    include "${pkgs.nano}/share/nano/extra/*.nanorc"
  '';

  programs.home-manager.enable = true;
}
