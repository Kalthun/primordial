{ config, pkgs, ... }: {

  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [
        "../../../wallpapers/art.png"
      ];
      wallpaper = [
        "DP-1, ../../../wallpapers/art.png"
      ];
    };
  };
}
# TODO
