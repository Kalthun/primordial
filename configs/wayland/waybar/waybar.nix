{ config, pgks, lib, ... }: {

  programs = {

    waybar.enable = true;

    waybar.settings = ./config.jsonc;

    waybar.style = ./style.css;
    
  };

}
