{ config, pkgs, lib, ... }: {

  programs.starship = {

    enable = true;
    enableZshIntegration = true;

    settings = pkgs.lib.importTOML ./starship.toml;

    settings = {
      add_newline = false
    };

  };

}
