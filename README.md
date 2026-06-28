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

## Usage

Apply the current Darwin host configuration:

```sh
darwin-rebuild switch --flake .#savely-macbook
```

Build it without applying changes:

```sh
darwin-rebuild build --flake .#savely-macbook
```

Update flake inputs:

```sh
nix flake update
```
