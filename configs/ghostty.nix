{ config, pkgs, ... }: {

  programs.ghostty.enable = true;

  programs.ghostty.settings = {
    window-decoration = false;
  };
  
}
