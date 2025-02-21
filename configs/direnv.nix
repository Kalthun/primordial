{ config, pkgs, lib, ... }: {
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;

    config = {
      whitelist = {
        prefix = [
          # auto `direnv allow` all sandboxes
          "~/primordial/sandboxes"
        ];
      }; 
    };
  };
}
