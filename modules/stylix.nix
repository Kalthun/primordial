{ config, pkgs, lib, ... }: {

  stylix = {
    enable = true;
    image = ../wallpapers/sg.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
  };

}
