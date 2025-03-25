# todo
{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      barlow
      caladea
      carlito
      dejavu_fonts
      dina-font
      fira-code
      fira-code-symbols
      font-awesome
      hack-font
      inconsolata
      liberation_ttf
      material-icons
      mplus-outline-fonts.githubRelease
      nerdfonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      noto-fonts-extra
      open-sans
      overpass
      proggyfonts
      source-code-pro
      symbola
    ];
  };
}
