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
    };

    outputs = {
        self, nixpkgs, nixos-hardware, home-manager, stylix, ...
    } @inputs: {
        nixosConfigurations = {

            seed = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/seed/configuration.nix
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.kalthun = import ./home.nix;
                        home-manager.backupFileExtension = "backup";
                    }
                    stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
                ];
            };

            runner = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/runner/configuration.nix
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.kalthun = import ./home.nix;
                        home-manager.backupFileExtension = "backup";
                    }
                    stylix.nixosModules.stylix # <- Includes both NixOS and Homemanager Modules
                ];
            };



        };
    };
}
