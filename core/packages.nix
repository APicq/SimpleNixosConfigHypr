{pkgs, ...}: {
  programs = {
    java.enable = true;
    adb.enable = true;
    firefox.enable = true;
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    #virt-manager.enable = true;
    mtr.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
     "googleearth-pro-7.3.6.9796" ];
  environment.systemPackages = with pkgs; [
    brightnessctl
    cmatrix
    curl
    duf
    dust
    ecryptfs
    emacs30-pgtk
    eza
    fd
    ffmpeg
    file
    file-roller
    gedit
    gimp
    git
    gptfdisk
    #greetd.tuigreet
    htop
    hyprpicker
    imv
    inxi
    killall
    libnotify
    libvirt
    lm_sensors
    lshw
    lsof
    lxqt.lxqt-policykit
    mpv
    ncdu
    nixd
    nixfmt-rfc-style
    patchelf
    pavucontrol
    pciutils
    pkg-config
    python3Full
    playerctl
    ripgrep
    ripgrep-all
    socat
    sysfsutils
    unrar
    unzip
    usbutils
    v4l-utils
    virt-viewer
    starship
    # vulkan-headers
    # vulkan-loader
    # vulkan-tools
    # vulkan-validation-layers
    wget
    firefox
    googleearth-pro
  ];
}
