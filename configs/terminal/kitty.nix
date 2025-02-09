{ config, pkgs, lib, ... }: {

  programs.kitty = {

    enable = true;

    shellIntegeration.enableZshIntegration = true;
    
  };
  
}
