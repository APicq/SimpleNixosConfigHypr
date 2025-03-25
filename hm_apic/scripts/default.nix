{
  pkgs,
  
  ...
}:
let username = "apic"; in
{
  home.packages = [
    (import ./task-waybar.nix { inherit pkgs; })
    (import ./nvidia-offload.nix { inherit pkgs; })
    (import ./wallsetter.nix { inherit pkgs; })
#    (import ./web-search.nix { inherit pkgs; })
    (import ./rofi-launcher.nix { inherit pkgs; })
    (import ./screenshootin.nix { inherit pkgs; })
  ];
}
