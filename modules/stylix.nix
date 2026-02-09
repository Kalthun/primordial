{ config, pkgs, lib, ... }: {

  stylix = {
    enable = true;
    image = ../wallpapers/upni.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
  };

}
