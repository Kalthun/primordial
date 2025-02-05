{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    settings = {
      
      env = [

        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"

        "WLR_NO_HARDWARE_CURSORS,1"
        
      ];

      exec-once = [
        "hyprctl setcursor catppuccin-mocha-light-cursors 48"
      ];
      
    };

  };

}
