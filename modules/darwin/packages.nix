{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Built-in macOS OpenSSH doesn't support FIDO2 keys
    openssh
    libfido2

    podman
    podman-compose
  ];
}