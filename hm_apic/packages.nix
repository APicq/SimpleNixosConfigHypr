{pkgs,...}:
with pkgs;
{
  home.packages= [
    blender
    freecad-wayland
    gh
    imagemagick
    keepassxc
    libreoffice-fresh
    nh
    nomacs
    okular
    rust-script
    samba
    tor-browser
    vlc
    zed-editor
    zola
  ];
}
    # wineWowPackages.stable
    # digikam
    # not working :
    # geeqie
    # gthumb
    #googleearth-pro
