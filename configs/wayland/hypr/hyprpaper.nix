{ config, pkgs, ... }: {

  services.hyprpaper = {

    enable = true;

    settings = {

      preload = [
        "~/primordial/wallpapers/art.png"
        "~/primordial/wallpapers/knight.png"
      ];

      wallpaper = [
        "DP-1,~/primordial/wallpapers/art.png"
        "DP-2,~/primordial/wallpapers/art.png"
        "eDP-1,~/primordial/wallpapers/knight.png"
      ];

    };

  };

}
