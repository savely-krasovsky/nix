{ ... }:

{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      zmodload zsh/complist
      zstyle ':completion:*' menu select

      bindkey "''${terminfo[kdch1]}" delete-char
      bindkey "^[[3~" delete-char
    '';

    shellAliases = {
      ls  = "eza --icons=always";
      ll  = "eza -l --icons=always";
      la  = "eza -la --icons=always";
      cat = "bat --plain";
      grep = "grep --color=auto";
    };
  };
}
