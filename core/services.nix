{ pkgs,... }:
{
  services = {
    # Limit size of journald
    journald.extraConfig = ''
    SystemMaxUse=512M
    '';

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    openssh.enable = true;
    udev.extraRules = ''
      SUBSYSTEM=="usb", ATTR{idVendor}=="03eb", ATTR{idProduct}=="2107", TAG+="uaccess", RUN{builtin}+="uaccess"
      '';
    # Enable gvfs to try to use the webdav protocol
    gvfs.enable = true;
    libinput.enable = true;
    fstrim.enable = true;
    blueman.enable = true;
    
    printing = {
      listenAddresses = [ "*:631" ];
      allowFrom = [ "all" ];
      browsing = true;
      defaultShared = true;
      openFirewall = true;
      enable = true;
    };

    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    # !!!! PROBLEM HERE
    #
    # greetd = {
    #   enable = true;
    #   vt = 3;
    #   settings = {
    #     default_session = {
    #       user = default_user;
    #        # start Hyprland with a TUI login manager
    #      command = "${pkgs.greetd.greetd}/bin/agreety --cmd Hyprland";
    #     };
    #   };
    # };
    
    # todo fixme with home-manager
    # security.pam.services.swaylock = {
    #   text = ''
    #   auth include login
    # '';
    # };
    xserver.enable = false;
    smartd.enable = true;
    gnome.gnome-keyring.enable = true;


    # -------
    # - Tor
    # -------
    # services.tor = {
    #   enable = true;
    #   client.enable = true;
    # };
    
    udev.packages = [ pkgs.android-udev-rules ];
    # Firmware update
    fwupd.enable = true;
  };
  
  # To automatically mount your private folder on login with PAM, add this to your config:
  security.pam.enableEcryptfs = true;

  # Security / Polkit
  security.rtkit.enable = true;
  security.polkit.enable = true;
  security.polkit.extraConfig = ''
    polkit.addRule(function(action, subject) {
      if (
        subject.isInGroup("users")
          && (
            action.id == "org.freedesktop.login1.reboot" ||
            action.id == "org.freedesktop.login1.reboot-multiple-sessions" ||
            action.id == "org.freedesktop.login1.power-off" ||
            action.id == "org.freedesktop.login1.power-off-multiple-sessions"
          )
      )
      {
        return polkit.Result.YES;
      }
    })
  '';
}
