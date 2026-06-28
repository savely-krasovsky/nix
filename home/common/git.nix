{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Savely Krasovsky";
        email = "savely@krasovs.ky";
      };

      init.defaultBranch = "master";
      pull.rebase = true;
      push.autoSetupRemote = true;
      core.editor = "nano";
    };
  };
}
