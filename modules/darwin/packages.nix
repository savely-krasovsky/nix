{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Built-in macOS OpenSSH doesn't support FIDO2 keys
    openssh
    openssl
    libfido2
    smimesign
  ];
}