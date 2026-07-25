{ pkgs, ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Savely Krasovsky";
        email = "savely@krasovs.ky";
        signingKey =
          if pkgs.stdenv.isDarwin
          then "REPLACE_WITH_MACOS_SIGNING_KEY_ID"
          else "DCC7F1A30F740DD9ED4589E0A714ECC57A561481";
      };

      gpg = {
        format = "x509";
        x509.program =
          if pkgs.stdenv.isDarwin
          then "${pkgs.smimesign}/bin/smimesign"
          else "${pkgs.gnupg}/bin/gpgsm";
      };

      commit.gpgSign = true;
      tag.gpgSign = true;

      init.defaultBranch = "master";
      pull.rebase = true;
      push.autoSetupRemote = true;
      core.editor = "nano";
    };
  };
}
