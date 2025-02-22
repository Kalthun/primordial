{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
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

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    fortune
    fastfetch

    eza  
    tree
    fzf
    ripgrep
    skim

    nvtopPackages.full

    ueberzugpp

    unzip
    zip

    lazygit
    lazydocker

    playerctl
    brightnessctl

    nwg-look

    # Might move later
    discord
    obsidian
    pavucontrol
    vscode

    blender
    obs-studio
    vlc
    zoom-us

    # Fonts
    nerd-fonts.caskaydia-cove
  ];

  imports = [
    inputs.nvf.homeManagerModules.default
    inputs.textfox.homeManagerModules.default
    ./configs
  ];

  home.sessionVariables = {
    EDITOR = "nvim";

    # LMAOOOO: fixed spotify_player in zellij + kitty
    TERM = "xterm-256color";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
