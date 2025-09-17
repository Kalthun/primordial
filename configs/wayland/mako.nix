{ pkgs, config, lib, ... }: {

  services.mako = {

    enable = true;

    settings = {
      
      defaultTimeout = "5000";
      anchor = "bottom-right";
      layer = "top";
      margin = "0";

    };
   
  };

}
