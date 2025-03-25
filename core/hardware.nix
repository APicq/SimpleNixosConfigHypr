{ pkgs, ... }:
{
  hardware = {
    # Scanner
    sane = {
      enable = true;
      extraBackends = [ pkgs.sane-airscan ];
      disabledDefaultBackends = [ "escl" ];
    };
    graphics.enable = true;
    enableRedistributableFirmware = true;
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };
  #local.hardware-clock.enable = false;
}
