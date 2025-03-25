{  ... }:

{
  programs.starship = {
    enable = true;
  };
  home.file.".config/starship.toml".source = ./configs/pastel-powerline.toml;
}
