{ pkgs, ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Savely Krasovsky";
        email = "savely@krasovs.ky";
        signingKey = "DCC7F1A30F740DD9ED4589E0A714ECC57A561481";
      };

      gpg = {
        format = "x509";
        x509.program = "${pkgs.gnupg}/bin/gpgsm";
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