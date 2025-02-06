{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    settings = {
      
      env = [

      ];

      exec-once = [
        # "hyprctl setcursor catppuccin-mocha-light-cursors 48"
        "hyprctl setcursor Pokemon 48"
      ];
      
    };

  };

}
