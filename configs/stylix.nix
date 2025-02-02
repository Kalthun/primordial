{ configs, pkgs, libs, ... }: {
  stylix.enable = true;

  stylix.autoEnable = true;

  stylix.opacity.terminal = 0.9;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
}
