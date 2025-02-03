{ config, pkgs, ... }: {

  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [
        "../../../wallpapers/art.png"
      ];
      wallpaper = [
        ", ../../../wallpapers/art.png"
      ];
    };
  };
}
# TODO
