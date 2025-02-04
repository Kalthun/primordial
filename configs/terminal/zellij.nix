{ config, pkgs, lib, ... }: {

  programs.zellij.enable = true;

  programs.zellij.enableZshIntegration = true;
  
}
