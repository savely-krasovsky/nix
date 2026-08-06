# Nix configuration

Personal Nix flake for two machines:

- `savely-macbook` — macOS system configuration managed with nix-darwin,
  Home Manager, and Homebrew;
- `savely-ubuntu` — standalone Home Manager configuration for an Ubuntu
  workstation.

The machines share the user environment under `home/common/`. macOS system
settings and applications are independent from the Ubuntu-specific modules.

## What is managed

The shared Home Manager profile provides:

- Zsh with completion, autosuggestions, syntax highlighting, aliases, and
  cross-platform key bindings;
- Git with signed commits and tags, Delta, rebase-oriented defaults, and a
  platform-specific personal signing identity;
- SSH hosts and FIDO2-backed identities;
- Starship and fzf shell integration;
- common CLI and development tools, including Go and Node tooling, Kubernetes
  clients, GitHub CLI, YubiKey Manager, and modern replacements for common Unix
  commands.

The Ubuntu profile additionally provides:

- a separate Git identity and OpenPGP signing key for repositories under
  `~/Projects/work/`;
- a GPG trustlist entry used with the local smart-card setup;
- physical-key Ghostty shortcuts that work independently of the active keyboard
  layout;
- Go and the multi-user Nix environment setup for Zsh.

The macOS configuration additionally manages:

- the host name, primary user, and Touch ID authentication for `sudo`;
- Nix flakes, automatic store optimisation, and garbage collection;
- OpenSSH with FIDO2 support, OpenSSL, libfido2, and S/MIME signing tools;
- GUI applications, Go, and selected Go tools through Homebrew;
- `/opt/podman/bin` and Homebrew paths and shell completions.

## Repository layout

```text
flake.nix                 Flake inputs and machine outputs
hosts/macbook/            MacBook entry point
modules/darwin/           macOS system, Nix, packages, and Homebrew modules
home/savely/              Shared user-profile entry point
home/common/              Cross-platform Home Manager modules
home/ubuntu/              Ubuntu-specific Home Manager modules
```

## Apply the configuration

### Ubuntu

Bootstrap or apply with Home Manager directly from the flake:

```sh
nix run github:nix-community/home-manager -- switch --flake .#savely-ubuntu
```

Once `home-manager` is available in the user profile, subsequent activations
can use:

```sh
home-manager switch --flake .#savely-ubuntu
```

### macOS

Apply the complete nix-darwin configuration:

```sh
darwin-rebuild switch --flake .#savely-macbook
```

Build it without activating:

```sh
darwin-rebuild build --flake .#savely-macbook
```

## Maintenance

Check that all flake outputs evaluate:

```sh
nix flake check --no-build
```

Update pinned inputs:

```sh
nix flake update
```
