{ config, pkgs, lib, ... }: {

  programs.kitty = {

    enable = true;

    shellIntegration = {

      enableZshIntegration = true;
      mode = "disabled";

    };

    extraConfig = builtins.readFile ./kitty.conf;

  };
  
}
