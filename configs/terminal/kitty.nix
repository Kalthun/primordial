{ config, pkgs, lib, ... }: {

  programs.kitty = {

    enable = true;

    shellIntegration = {

      enableZshIntegration = true;
      mode = "no-cursor";

    };

    extraConfig = builtins.readFile ./kitty.conf;

  };
  
}
