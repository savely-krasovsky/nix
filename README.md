# System Configuration

Reusable Nix configuration for managing system and user environments with flakes.

The repository currently contains a `nix-darwin` host configuration and shared
Home Manager modules. Common user-level modules are kept separate so they can be
reused by other machines later, including Linux-based systems.

## Structure

- `flake.nix` - flake entry point and host outputs.
- `devshells/` - project development environments and their build
  dependencies.
- `hosts/` - machine-specific system configurations.
- `modules/` - system-level modules grouped by platform.
- `home/` - Home Manager user configurations.
- `home/common/` - shared Home Manager modules for shell, git, ssh, fzf,
  starship, and user packages.
- `home/kinoite/` - Kinoite-only Home Manager modules, including the C
  development toolchain.

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

This installs the shared user packages and the Kinoite-only C development
toolchain without adding it to the macOS configuration.

Build Wails 3 from a Wails repository using the development environment from
this flake:

```sh
nix develop /path/to/this/repository#wails3 -c go install ./v3/cmd/wails3/
```

The development environment provides GTK4, WebKitGTK 6.0, and all of their
transitive `pkg-config` dependencies.

Run a Wails application with access to the host GPU drivers:

```sh
nixGLIntel ./bin/application
```

Update flake inputs:

```sh
nix flake update
```
