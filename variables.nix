{
  # For Nvidia Prime support
  intel_bus_id = "PCI:0:2:0";
  nvidia_bus_id = "PCI:2:0:0";
  # host name
  host = "nixos-asus";
  # default user
  default_user = "apic";
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "APicq";
  gitEmail = "todo";

  # Hyprland Settings
  extraMonitorSettings = "";

  # Waybar Settings
  clock24h = true;

  # Program Options
  browser = "firefox"; # Set Default Browser (google-chrome-stable for google-chrome)
  terminal = "alacritty"; # Set Default System Terminal
  keyboardLayout = "fr";
  consoleKeyMap = "fr";
}
