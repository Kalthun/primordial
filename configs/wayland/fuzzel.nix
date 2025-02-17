{ config, pkgs, lib, ... }: {

  programs.fuzzel.enable = true;

  xdg.configFile."fuzzel/fuzzel.ini".text = ''
    
  '';

}
