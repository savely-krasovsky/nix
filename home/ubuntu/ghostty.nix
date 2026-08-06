{ lib, ... }:

let
  # Ghostty treats single-character key names as layout-dependent. Generate
  # physical variants of its alphabetic default GTK shortcuts so they work in
  # every keyboard layout.
  physicalKeybinds = [
    { modifiers = "ctrl+shift"; key = "C"; action = "copy_to_clipboard:mixed"; }
    { modifiers = "ctrl+shift"; key = "V"; action = "paste_from_clipboard"; }
    { modifiers = "super+ctrl+shift"; key = "J"; action = "write_screen_file:copy,plain"; }
    { modifiers = "ctrl+shift"; key = "J"; action = "write_screen_file:paste,plain"; }
    { modifiers = "ctrl+alt+shift"; key = "J"; action = "write_screen_file:open,plain"; }
    { modifiers = "ctrl+shift"; key = "N"; action = "new_window"; }
    { modifiers = "ctrl+shift"; key = "W"; action = "close_tab:this"; }
    { modifiers = "ctrl+shift"; key = "Q"; action = "quit"; }
    { modifiers = "ctrl+shift"; key = "T"; action = "new_tab"; }
    { modifiers = "ctrl+shift"; key = "O"; action = "new_split:right"; }
    { modifiers = "ctrl+shift"; key = "E"; action = "new_split:down"; }
    { modifiers = "ctrl+shift"; key = "F"; action = "start_search"; }
    { modifiers = "ctrl+shift"; key = "I"; action = "inspector:toggle"; }
    { modifiers = "ctrl+shift"; key = "A"; action = "select_all"; }
    { modifiers = "ctrl+shift"; key = "P"; action = "toggle_command_palette"; }
  ];
in {
  xdg.configFile."ghostty/config.ghostty".text = ''
    ${lib.concatMapStringsSep "\n" ({ modifiers, key, action }:
      "keybind = ${modifiers}+Key${key}=${action}"
    ) physicalKeybinds}
  '';
}
