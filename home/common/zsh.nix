{ ... }:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      zmodload zsh/complist
      zstyle ':completion:*' menu select
    '';

    shellAliases = {
      ll = "ls -la";
      gs = "git status";
      gd = "git diff";
      grep = "grep --color=auto";
    };
  };
}
