{ config, pkgs, lib, ... }: {

  hardware.graphics.enable = true;

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {

    modesetting.enable = true;

    powerManagement.enable = true;

    powerManagement.finegrained = false;

    open = false;

    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;

  };

  # For ollama CUDA
  # NOTE: probably a way of doing thing based on if nvidia is set
  services.ollama.acceleration = "cuda";

}
