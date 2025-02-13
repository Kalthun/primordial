{
  config,
  pkgs,
  lib,
  ...
}: {
  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = false;
  };

  services.blueman.enable = true;
}
# TODO: Check HM to see if there's a diff setting

