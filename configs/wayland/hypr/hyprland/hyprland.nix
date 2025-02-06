{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    settings = {
      
      env = [

        # "WLR_NO_HARDWARE_CURSORS,1"
        # "AQ_NO_ATOMIC=-1"

      ];

      exec-once = [
        # "hyprctl setcursor catppuccin-mocha-light-cursors 48"
        "hyprctl setcursor Pokemon 36"
      ];
      
    };

  };

}
