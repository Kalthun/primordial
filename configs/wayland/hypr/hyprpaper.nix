{ config, pkgs, ... }: {

  services.hyprpaper = {

    enable = true;

    settings = {

      preload = [
        # "~/primordial/wallpapers/art.png"
        # "~/primordial/wallpapers/sg.png"
        # "~/primordial/wallpapers/knight.png"

        "~/primordial/wallpapers/fre/fre-aftermath.png"
        "~/primordial/wallpapers/fre/fre-promises.png"
      ];

      wallpaper = [
        "DP-3, ~/primordial/wallpapers/fre/fre-aftermath.png"
        "eDP-1,~/primordial/wallpapers/fre/fre-promises.png"
        "DP-6, ~/primordial/wallpapers/fre/fre-aftermath.png"
        "DP-7, ~/primordial/wallpapers/fre/fre-promises.png"
      ];

    };

  };

}
