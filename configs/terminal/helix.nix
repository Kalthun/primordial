{ config, pkgs, ... }: {

  programs.helix.enable = true;

  programs.helix.settings = {
    editor = {
      line-number = "relative";
    };
  };

}
