{ config, pkgs, ... }: {

  programs.git = {

    enable = true;

    settings = {
      user = {
        name = "kalthun";
        email = "jameskwmail@gmail.com";
      };
    };

  };

}
