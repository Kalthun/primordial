{ config, pkgs, lib, ... }: {

  stylix = {
    enable = true;
    image = ../wallpapers/art.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
  };

}
