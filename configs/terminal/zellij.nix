{ config, pkgs, lib, ... }: {

  programs.zellij = {

    enable = true;
    enableZshIntegration = true;

    settings = {

      on_force_close = "detach";
      simplified_ui = true;

      ui = {
        pane_frames = {
          rounded_corners = true;
          # hide_session_name = true;
        };
      };
      
    };

    # xdg.configFile."zellij/layouts/default.kdl".text = builtins.readFile "";

  };
  
}
