{ ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      "$schema" = "https://starship.rs/config-schema.json";

      add_newline = false;
      command_timeout = 1000;

      format = "$directory$git_branch$git_status$nix_shell$cmd_duration$line_break$character";

      directory = {
        style = "bold cyan";
        truncation_length = 3;
        truncation_symbol = "…/";
      };

      git_branch = {
        symbol = "git ";
        style = "bold purple";
        format = "[$symbol$branch]($style) ";
      };

      git_status = {
        style = "bold red";
        format = "[$all_status$ahead_behind]($style) ";
      };

      nix_shell = {
        symbol = "nix ";
        style = "bold blue";
        format = "[$symbol$state( \\($name\\))]($style) ";
      };

      cmd_duration = {
        min_time = 500;
        format = "took [$duration](bold yellow) ";
      };

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
        vimcmd_symbol = "[❮](bold green)";
      };
    };
  };
}