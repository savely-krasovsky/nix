# System Configuration

Reusable Nix configuration for managing system and user environments with flakes.

The repository currently contains a `nix-darwin` host configuration and shared
Home Manager modules. Common user-level modules are kept separate so they can be
reused by other machines later, including Linux-based systems.

## Structure

- `flake.nix` - flake entry point and host outputs.
- `hosts/` - machine-specific system configurations.
- `modules/` - system-level modules grouped by platform.
- `home/` - Home Manager user configurations.
- `home/common/` - shared Home Manager modules for shell, git, ssh, fzf,
  starship, and user packages.
- `home/kinoite/` - Kinoite-only Home Manager modules for applications,
  fonts, and desktop configuration.

## Usage

Apply the current Darwin host configuration:

```sh
darwin-rebuild switch --flake .#savely-macbook
```

Build it without applying changes:

```sh
darwin-rebuild build --flake .#savely-macbook
```

### Fedora Kinoite

Run the commands from the repository root. For the first activation, when
`home-manager` is not available yet, use:

```sh
nix run github:nix-community/home-manager -- switch --flake .#savely-kinoite
```

The configuration enables the `home-manager` command. Apply later changes with:

```sh
home-manager switch --flake .#savely-kinoite
```

This installs the shared user packages and Kinoite-specific configuration
without adding it to the macOS configuration. Project environments and native
build dependencies are managed separately with Distrobox.

Update flake inputs:

```sh
nix flake update
```
