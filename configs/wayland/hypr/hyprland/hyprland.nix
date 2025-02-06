{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    disable_logs = false;

    settings = {
      
      env = [

      ];

      exec-once = [
        # "hyprctl setcursor catppuccin-mocha-light-cursors 48"
        "hyprctl setcursor Pokemon 36"
      ];
      
    };

  };

}
