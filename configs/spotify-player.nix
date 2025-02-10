{ config, pkgs, lib, ... }: {

  programs.spotify-player = {
    enable = true;

    settings = {
      playback_window_position = "Bottom";
    };
  };
  
}
