{ config, pkgs, lib, ... }: {

  programs = {
    
    xfconf.enable = true;

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-volman
      ];
    };

  };

  services = {
    gvfs.enable = true;
    tumbler.enable = true;
  };

}
