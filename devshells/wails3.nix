{ nixgl, pkgs }:

pkgs.mkShell {
  packages = with pkgs; [
    gcc
    go
    # Mesa-based OpenGL/EGL wrapper for Intel and AMD on non-NixOS.
    nixgl
    pkg-config
  ];

  buildInputs = with pkgs; [
    # Wails 3 Linux frontend dependencies.
    gtk4
    webkitgtk_6_0
  ];
}
