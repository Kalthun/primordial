{ config, pkgs, lib, ... }: {

  programs.zellij = {

    enable = true;
    enableZshIntegration = true;

    settings = {

      simplified_ui = true;
      
    };

  };
  
}
