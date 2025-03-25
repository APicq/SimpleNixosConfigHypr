{pkgs,...}:
with pkgs;
{
  home.packages= [
    keepassxc
    imagemagick
    zola
    blender
    zed-editor
    # wineWowPackages.stable
    # digikam
    # not working :
    # geeqie
    # gthumb
    nomacs
    libreoffice-fresh
    zola
    rust-script
    gh
    okular
    freecad-wayland
    vlc
    nh
    samba
    #googleearth-pro
  ];
}
