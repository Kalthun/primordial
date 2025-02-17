{
  config,
  pkgs,
  lib,
  ...
}: {
  hardware = {
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
  };

  services.blueman.enable = true;
}
# TODO: Check HM to see if there's a diff setting

