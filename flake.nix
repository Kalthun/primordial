{
    description = "NixOS Configuration Flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = {
        self, nixpkgs, ...
    } @inputs: {
        nixosConfigurations = {
            seed = nixpkgs.lib.nixosSystem {
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/seed/configuration.nix
                ];
            };
        };
    };
}
