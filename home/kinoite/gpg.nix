{ ... }:

{
  programs.gpg = {
    enable = true;

    scdaemonSettings = {
      application-priority = "piv";
      disable-ccid = true;
      pcsc-shared = true;
    };
  };

  services.gpg-agent = {
    enable = true;

    extraConfig = ''
      pinentry-program /usr/bin/pinentry
    '';
  };

  home.file.".gnupg/trustlist.txt".text = ''
    D3DD483E2BBF4C05E8AF10F5FA7626CFD3DC3092 S
  '';
}
