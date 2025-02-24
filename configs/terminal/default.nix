{
  imports = [

    # Terminals
    ./kitty/kitty.nix
    ./wezterm/wezterm.nix
    ./ghostty/ghostty.nix

    # Shells
    ./zsh/zsh.nix

    # Prompts
    ./starship/starship.nix

    # Multiplexors
    ./zellij/zellij.nix
    ./tmux/tmux.nix

    # Editors
    ./helix/helix.nix

    # File Managers
    ./yazi/yazi.nix

    # Applications
    ./spotify-player/spotify-player.nix

    # Tools
    ./zoxide/zoxide.nix
    ./bat/bat.nix
    ./btop/btop.nix

  ];
}
