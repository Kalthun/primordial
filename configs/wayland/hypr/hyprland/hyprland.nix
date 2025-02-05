{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    settings = {
      
      env = [

        "XCURSOR_SIZE,24"
        
      ];
      
    };

  };

}
