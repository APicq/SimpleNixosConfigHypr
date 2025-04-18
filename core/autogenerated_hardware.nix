# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ modulesPath, lib, ... }:

{
  imports =
    [ "${modulesPath}/installer/scan/not-detected.nix"
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/b7eb989c-c6c4-408a-bc90-2ef623368977";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/49DB-D7D8";
      fsType = "vfat";
    };

  # swapDevices =
  #   [ { device = "/dev/disk/by-uuid/5023dea7-54c8-4bf6-b86e-5a2d48be498c";
  #     }
  #   ];

  swapDevices =
    [ {
      device = "/dev/disk/by-partuuid/e537bda8-a612-4ef6-b9d6-1b89119d760f";
      randomEncryption = {
        cipher = "serpent-xts-plain64";
        enable = true;
        source = "/dev/random";
      };
    }
    ];

  nix.settings.max-jobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
