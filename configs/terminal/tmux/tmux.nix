{ config, pkgs, ... }: {

  programs.tmux = {

    enable = true;

    extraConfig = ''
      set-option -ga terminal-overrides ",xterm-256color:Tc"
    # '';

    terminal = "wezterm";

    plugins = with pkgs; [
      tmuxPlugins.sensible
    ];

  };

}
