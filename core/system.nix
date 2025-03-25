{consoleKeyMap,default_user, ...}:
{
  nix = {
    settings = {
      download-buffer-size = 250000000;
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      allowed-users = [ "${default_user}"];
    };
  };
  #time.timeZone = "Europe/Paris";
  time.timeZone = null;
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_DK.UTF-8"; # date 2025-03-03
  };
  environment.variables = {
    CONGORIVER_VERSION = "0.1";
  };
  console = {
        font = "Lat2-Terminus16";
        keyMap = "${consoleKeyMap}";
  };
  system.stateVersion = "24.11"; # Do not change!
}
