{ config, pkgs, ... }: {

  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [
        "../../../wallpapers/art.png"
      ];
      wallpaper = [
        "DP-2, ../../../wallpapers/art.png"
      ];
    };
  };
}
# TODO
