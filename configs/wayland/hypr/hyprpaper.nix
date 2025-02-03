{ config, pkgs, ... }: {

  services.hyprpaper = {

    enable = true;

    settings = {

      preload = [
        "~/primordial/wallpapers/art.png"
      ];

      wallpaper = [
        "DP-2,~/primordial/wallpapers/art.png"
        "eDP-1,~/primordial/wallpapers/art.png"
      ];

    };

  };

}
