{
    description = "NixOS Configuration Flake";

    inputs = {

        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

        nixos-hardware.url = "github:nixos/nixos-hardware/master";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix.url = "github:danth/stylix";

        # nvf.url = "github:notashelf/nvf";

        zjstatus.url = "github:dj95/zjstatus";
    };

    outputs = {
        self,
        nixpkgs,
        nixos-hardware,
        home-manager,
        stylix,
        # nvf,
        zjstatus,
        ...
    } @inputs:
        # let

        # in
    {
        nixosConfigurations = {

            seed = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/seed/configuration.nix
                    (import ./overlays)
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.kalthun = import ./home.nix;
                        home-manager.backupFileExtension = "backup";
                        home-manager.extraSpecialArgs = { inherit inputs; };
                    }
                    stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
                ];
            };

            runner = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/runner/configuration.nix
                    (import ./overlays)
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.kalthun = import ./home.nix;
                        home-manager.backupFileExtension = "backup";
                        home-manager.extraSpecialArgs = { inherit inputs; };
                    }
                    stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
                ];
            };

            pillar = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/pillar/configuration.nix
                    (import ./overlays)
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.kalthun = import ./home.nix;
                        home-manager.backupFileExtension = "backup";
                        home-manager.extraSpecialArgs = { inherit inputs; };
                    }
                    stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
                ];
            };

        };
    };
}
