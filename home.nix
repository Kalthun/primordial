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

  home.packages = with pkgs; [
 
    fortune
    fastfetch

    eza
    bat
    tree
    fzf
    ripgrep
    skim
    ueberzugpp
    unzip
    zip

    lazygit
    lazydocker

    playerctl
    brightnessctl

    nwg-look

    nil
    # Other one

    zoom-us


    # Might move later
    discord
    obsidian
    pavucontrol
    vscode
    
  ];

  imports = [
    inputs.nvf.homeManagerModules.default
    ./configs/terminal
    ./configs/direnv.nix
    ./configs/wayland
    ./configs/firefox.nix
    ./configs/chromium.nix
    ./configs/stylix.nix
    ./configs/spotify-player.nix
  ];

  home.sessionVariables = {
    EDITOR = "nvim";

    # LMAOOOO: fixed spotify_player in zellij + kitty
    TERM = "xterm-256color";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
