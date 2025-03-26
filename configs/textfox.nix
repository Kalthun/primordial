{ config, pkgs, lib, ... }: {

  textfox = {
    enable = true;
    profile = "kalthun";
    config = {
      tabs.horizontal.enable = true; # why?
      displayWindowControls = false;
      displayNavButtons = true;
      displayUrlbarIcons = true;
      displaySidebarTools = true;
      displayTitles = true;
    };
  };

}
