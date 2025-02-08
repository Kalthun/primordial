{ config, pkgs, lib, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./hyprland.config;

    settings = {
      exec-once = [
        # "hyprctl setcursor catppuccin-mocha-light-cursors 48"
        # "hyprctl setcursor Pokemon 36"
        # "hyprctl setcursor Gruppled Black 36"
      ];
      
    };

  };

}
