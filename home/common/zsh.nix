{ ... }:

{
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    completionInit = ''
      # Homebrew is managed by nix-darwin outside Nix profiles, so expose its
      # zsh completion directory explicitly. On non-macOS hosts this is skipped.
      if [[ -d /opt/homebrew/share/zsh/site-functions ]]; then
        fpath=(/opt/homebrew/share/zsh/site-functions $fpath)
      fi

      autoload -U compinit && compinit
    '';

    initContent = ''
      zstyle ':completion:*' menu select

      # Podman on macOS is installed from the official pkg under /opt/podman.
      # Generate completions from that binary without installing Podman via Nix.
      if [[ -x /opt/podman/bin/podman ]]; then
        source <(/opt/podman/bin/podman completion zsh)
      fi

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
