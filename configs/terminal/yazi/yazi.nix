{ config, pkgs, lib, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;

    settings = {

      preview = {
        image_delay = 0;
        ueberzug_offset = [
        (-8)
        0
        0
        0
        ];
      };

    };
  };
}
