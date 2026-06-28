{ ... }:

{
  system.primaryUser = "savely";

  security.pam.services.sudo_local.touchIdAuth = true;

  users.users.savely = {
    name = "savely";
    home = "/Users/savely";
  };
}
