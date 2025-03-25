{config,...}:
{
  boot = {
    # -------------
    # test for WIFI
    #--------------
    extraModulePackages = [ config.boot.kernelPackages.rtl88x2bu ];


    # ------------------------------
    # test to rebuild raspberry pi 3
    # ------------------------------
    binfmt.emulatedSystems = [ "aarch64-linux" ];

    # Use the systemd-boot EFI boot loader.
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;

    # NTFS
    supportedFilesystems = [ "ntfs" ];

    # Clean the tmp dir at boot
    tmp.cleanOnBoot = true;

  };
}
