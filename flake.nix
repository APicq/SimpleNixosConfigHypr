{
  description = "Congoriver NixOS configuration";
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-24.11";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    with import ./variables.nix;
    {
      nixosConfigurations."${host}" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./core
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = {
              inherit
                inputs
                default_user
                host
                browser
                extraMonitorSettings
                terminal
                keyboardLayout
                ;
            };
            home-manager.users.apic = {
              home = {
                username = "apic";
                homeDirectory = "/home/apic";
                stateVersion = "24.11";
              };
              programs.home-manager.enable = true;
              imports = [
                ./hm_apic
              ];
            };
          }
        ];
        specialArgs = {
          inherit inputs;
          inherit host;
          inherit default_user;
          inherit intel_bus_id;
          inherit nvidia_bus_id;
          inherit consoleKeyMap;
        };
      };
    };
}
