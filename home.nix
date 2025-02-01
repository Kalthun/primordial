{ config, pkgs, lib, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "kalthun";
  home.homeDirectory = "/home/kalthun";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
 
    hyprshot

    eza
    bat
    tree
    fzf
    yazi
    lazygit

  ];

  imports = [
    ./configs/ghostty.nix

    ./configs/zsh.nix
    ./configs/starship.nix    

    ./configs/git.nix
    ./configs/helix.nix

    ./configs/firefox.nix

    ./configs/stylix.nix

    ./configs/tmux.nix
  ];

  home.sessionVariables = {
    EDITOR = "helix";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
