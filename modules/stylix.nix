{ config, pkgs, lib, ... }: {

  stylix = {
    enable = true;
    image = ../wallpapers/snore.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/sparky.yaml";
  };

}
