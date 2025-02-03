{ config, pkgs, ... }: {

  services.hyprpaper = {

    enable = true;

    settings = {

      preload = [
        "../../../wallpapers/knight.png"
      ];

      wallpaper = [
        "DP-2,../../../wallpapers/knight.png"
      ];

    };

  };

}
