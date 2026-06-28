{ ... }:

{
  system.primaryUser = "savely";

  environment.pathsToLink = [
    "/share/zsh"
  ];

  networking = {
    hostName = "savely-macbook.local";
    computerName = "MacBook Pro — Savely";
    localHostName = "savely-macbook";
  };

  security.pam.services.sudo_local.touchIdAuth = true;

  users.users.savely = {
    name = "savely";
    home = "/Users/savely";
  };
}
