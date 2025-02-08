{ pkgs, config, lib, ... }: {

  services.mako = {
    enable = true;
    anchor = "bottom-right";
    layer = "top";
  };
  
}
