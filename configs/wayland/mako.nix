{ pkgs, config, lib, ... }: {

  services.mako = {

    enable = true;

    settings = {
      default-timeout = 5000;
      anchor = "bottom-right";
      layer = "top";
      margin = "0";
    };
   
  };

}
