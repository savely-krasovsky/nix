{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    settings = {
      "*" = {
        SetEnv = {
          TERM = "xterm-256color";
        };
      };

      "pve.lan" = {
        User = "root";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_pve_root";
        IdentitiesOnly = true;
      };

      "fcos.lan" = {
        User = "core";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_fcos_core";
        IdentitiesOnly = true;
      };

      "truenas.lan" = {
        User = "truenas_admin";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_truenas_truenas_admin";
        IdentitiesOnly = true;
      };

      "ssh.krasovs.ky" = {
        User = "savely";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_debian_savely";
        IdentitiesOnly = true;
      };

      "ch-vps01.krasovs.ky" = {
        User = "savely";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_lu-vps01_savely";
        IdentitiesOnly = true;
      };

      "nl-vps01.krasovs.ky" = {
        User = "savely";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_nl-vps01_savely";
        IdentitiesOnly = true;
      };

      "ru-vps01.krasovs.ky" = {
        User = "savely";
        IdentityFile = "~/.ssh/id_ed25519_sk_rk_ru-vps01_savely";
        IdentitiesOnly = true;
      };
    };
  };
}