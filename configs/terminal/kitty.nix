{ config, pkgs, lib, ... }: {

  programs.kitty = {

    enable = true;

    # shellIntegration.enableZshIntegration = true;

    extraConfig = builtins.readFile ./kitty.conf;

  };
  
}
