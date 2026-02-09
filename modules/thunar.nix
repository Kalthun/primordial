{ config, pkgs, lib, ... }: {

  programs = {
    
    xfconf.enable = true;

    thunar = {
      enable = true;
      plugins = with pkgs; [
        thunar-volman
        thunar-archive-plugin
      ];
    };

  };

  services = {
    gvfs.enable = true;
    tumbler.enable = true;
  };

}
