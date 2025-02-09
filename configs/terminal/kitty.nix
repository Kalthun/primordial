{ config, pkgs, lib, ... }: {

  programs.kitty = {

    enable = true;

    shellIntegration.enableZshIntegration = true;
    
  };
  
}
