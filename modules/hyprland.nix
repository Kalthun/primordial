{ config, pkgs, lib, ... }: {

  programs.hyprland.enable = true;
  # programs.hyprland.xwayland.enable = true;
  
  environment = {
    sessionVariables = {

      WLR_NO_HARDWARE_CURSORS = "1";
      AQ_NO_ATOMIX = "0";
      
    };
  };
}
