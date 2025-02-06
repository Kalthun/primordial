{ config, pkgs, lib, ... }: {

  programs.zellij.enable = true;

  # programs.zellij.enableZshIntegration = true;

  programs.zellij = {

    enable = true;
    enableZshIntegration = true;

    settings = {

      simplified_ui = true;
      
    };

  };
  
}
