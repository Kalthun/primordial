{ config, pkgs, lib, ... }: {

  textfox = {
    enable = true;
    profile = "kalthun";
    config = {
      displayHorizontalTabs = true;
      displayWindowControls = false;
      displayNavButtons = true;
      displayUrlbarIcons = true;
      displaySidebarTools = true;
      displayTitles = true;
    };
  };

}
