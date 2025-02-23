{ config, pkgs, lib, ... }: {

  services.ollama = {
    enable =  true;
  };

  # Lookup more options
  services.open-webui.enable =  true;

}
