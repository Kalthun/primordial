{
  description = "NixOS Configuration Flake";

  nixConfig = {
    extra-substituters = [
      "https://cuda-maintainers.cachix.org"
    ];
    extra-trusted-public-keys = [
      "cuda-maintainers.cachix.org-1:0dq3bujKpuEPMCX6U4WylrUDZ9JyUG0VpVZa7CNfq5E="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixos-hardware.url = "github:nixos/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    nvf.url = "github:notashelf/nvf";

    zjstatus.url = "github:dj95/zjstatus";

    textfox.url = "github:adriankarlen/textfox";
  };

  outputs = {
    self,
    nixpkgs,
    nixos-hardware,
    home-manager,
    stylix,
    nvf,
    zjstatus,
    textfox,
    ...
  } @ inputs:
  # let
  # in
  {
    # TODO: Less Repetition
    # home-manager.nixosModules.home-manager = {
    #     useGlobalPkgs = true;
    #     useUserPackages = true;
    #     backupFileExtension = "backup";
    #     extraSpecialArgs = { inherit inputs; };

    #     users = {
    #       "kalthun" = import ./home.nix;
    #     };
    # };

    nixosConfigurations = {

      seed = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hosts/seed/configuration.nix
          (import ./overlays)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.kalthun = import ./home.nix;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
          stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
        ];
      };

      runner = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hosts/runner/configuration.nix
          (import ./overlays)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.kalthun = import ./home.nix;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
          stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
        ];
      };

      pillar = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hosts/pillar/configuration.nix
          (import ./overlays)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.kalthun = import ./home.nix;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
          stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
        ];
      };

      traveller = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/traveller/configuration.nix
          (import ./overlays)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.kalthun = import ./home.nix;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
          stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
        ];
      };

    };
  };
}
