{ config, pkgs, lib, inputs, ... }:

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

  home.pointerCursor = lib.mkForce {

    gtk.enable = lib.mkForce true;
    x11.enable = lib.mkForce true;

    package = lib.mkForce pkgs.catppuccin-cursors.mochaLight;
    name = lib.mkForce "catppuccin-mocha-light-cursors";
    size = lib.mkForce 36;

  };

  home.packages = with pkgs; [
 
    fortune
  
    hyprshot
    hyprpaper

    eza
    bat
    tree
    fzf
    yazi

    lazygit
    lazydocker

    spotify-player

  ];

  imports = [
    inputs.nvf.homeManagerModules.default
    ./configs/terminal
    ./configs/wayland
    ./configs/firefox.nix
    ./configs/stylix.nix
    ./configs/nvf/nvf.nix
  ];

  home.sessionVariables = {
    EDITOR = "helix";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
