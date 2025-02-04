{ config, pkgs, ... }: {

  programs.ghostty.enable = true;

  programs.ghostty.enableZshIntegration = true;

  programs.ghostty.settings = {
    window-decoration = false;
    confirm-close-surface = false;
  };

}
