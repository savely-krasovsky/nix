{ ... }:

{
  imports = [
    ./gpg.nix
    ./git.nix
    ./ghostty.nix
  ];

  # Ubuntu's Zsh does not source /etc/profile.d automatically. Load the
  # multi-user Nix environment so its profiles are available in PATH.
  programs.zsh.envExtra = ''
    if [[ -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]]; then
      source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
    fi
  '';
}
