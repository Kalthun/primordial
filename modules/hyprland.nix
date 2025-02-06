{ config, pkgs, lib, ... }: {

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  
  environment = {
    sessionVariables = {

      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";

      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
      XDG_SESSION_DESKTOP = "Hyprland";

      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      QT_QPA_PLATFORM = "wayland";
      QT_QPA_PLATFORMTHEME = "qt5ct";

      GDK_SCALE = "2";
      
    };
  };
}
