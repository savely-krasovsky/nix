# System Configuration

Personal Nix flake for two independent machines:

- `savely-macbook` — a complete macOS system configuration built with
  nix-darwin and Home Manager.
- `savely-kinoite` — a standalone Home Manager configuration for Fedora
  Kinoite.

Neither configuration imports the other. They share only the reusable
user-level modules under `home/common/`.

## Configurations

| Flake output | Machine | Scope |
| --- | --- | --- |
| `darwinConfigurations.savely-macbook` | MacBook / macOS | nix-darwin system, Homebrew, and Home Manager |
| `homeConfigurations.savely-kinoite` | Fedora Kinoite | Home Manager user environment only |

## Structure

- `flake.nix` - flake entry point and both machine outputs.
- `hosts/macbook/` - entry point for the MacBook system configuration.
- `modules/darwin/` - macOS system packages, Nix settings, and Homebrew.
- `home/savely/` - shared user profile and common-module wiring.
- `home/common/` - shared Home Manager modules for shell, git, ssh, fzf,
  starship, and user packages.
- `home/kinoite/` - Kinoite-only applications, GPG/PIV, fonts, Konsole, and
  desktop configuration.

## MacBook

The MacBook output manages the macOS system through nix-darwin, embeds the
shared Home Manager profile, and manages graphical applications through
Homebrew.

Apply it:

```sh
darwin-rebuild switch --flake .#savely-macbook
```

Build without applying:

```sh
darwin-rebuild build --flake .#savely-macbook
```

## Fedora Kinoite

Kinoite is a separate standalone Home Manager output. It does not use or
evaluate the MacBook host and Darwin modules. Fedora continues to manage the
immutable base operating system; Home Manager manages the user environment,
fonts, terminal configuration, and selected applications. Development
environments and native project dependencies live in Distrobox.

For the first activation, when `home-manager` is not installed:

```sh
nix run github:nix-community/home-manager -- switch --flake .#savely-kinoite
```

The first activation installs the `home-manager` command. Apply subsequent
changes with:

```sh
home-manager switch --flake .#savely-kinoite
```

## Maintenance

Update flake inputs:

```sh
nix flake update
```
