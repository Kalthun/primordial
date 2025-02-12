{ config, pkgs, lib, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      
    };
  };
}
