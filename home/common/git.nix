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
          then "6392013f718746669486678e566a47d93c355c84"
          else "B44342FAF49F57B1A152D7690CD8CA6579E16ABB";
      };

      gpg = {
        format = "x509";
        x509.program =
          if pkgs.stdenv.isDarwin
          then "${pkgs.smimesign}/bin/smimesign"
          else "/usr/bin/gpgsm";
      };

      commit.gpgSign = true;
      tag.gpgSign = true;

      fetch.prune = true;
      init.defaultBranch = "master";
      diff.algorithm = "histogram";
      merge.conflictStyle = "zdiff3";
      pull.rebase = true;
      push.default = "current";
      push.autoSetupRemote = true;
      rebase.autoStash = true;
      rerere.enabled = true;
      core.editor = "nano";
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = true;
  };
}
