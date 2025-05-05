{ pkgs, config, lib, ... }: {

  services.mako = {
    enable = true;
    defaultTimeout = "5000";
    anchor = "bottom-right";
    layer = "top";
    margin = "0";
  };

}
