{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    settings = {
      
      env = [

        "AQ_NO_ATOMIC=-1"

      ];

      exec-once = [
        # "hyprctl setcursor catppuccin-mocha-light-cursors 48"
        "hyprctl setcursor Pokemon 48"
      ];
      
    };

  };

}
