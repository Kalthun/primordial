{ config, pkgs, lib, ... }: {

  stylix = {

    # image = ../wallpapers/fre/fre-aftermath.png;

    enable = true;
    autoEnable = true;

    # polarity = "dark";

    opacity = {
      terminal = 0.85;
      desktop = 0.0;
      applications = 0.85;
      popups = 0.85;
    };

    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";

    override = {
      base03 = "717C7C";
    };

    fonts = {

      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };

      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font";
      };

      emoji = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font";
      };

      sizes = {
        terminal = 13;
      };

    };

      cursor = {
      package = pkgs.gruppled-black-cursors;
      name = "gruppled_black";
      size = 24;
    };

    targets = {
      firefox.profileNames = [
        "kalthun"
      ];
    };

  };

  # For hyprland border
  wayland.windowManager.hyprland.settings.general."col.active_border" = lib.mkForce "rgba(${config.lib.stylix.colors.base0D}ff) rgba(${config.lib.stylix.colors.base08}ff) 45deg";
  wayland.windowManager.hyprland.settings.general."col.inactive_border" = lib.mkForce "rgba(${config.lib.stylix.colors.base04}aa)";

  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.arc-icon-theme;
      name = "Arc";
    };
  };

}
