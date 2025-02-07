{ config, pkgs, lib, ... }: {

  programs.zellij = {

    enable = true;
    enableZshIntegration = true;

    settings = {

      on_force_close = "quit";
      # simplified_ui = true;

      ui = {
        pane_frames = {
          rounded_corners = true;
          hide_session_name = true;
        };
      };
      
    };

  };
  
}
