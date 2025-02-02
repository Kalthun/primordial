{ configs, pkgs, libs, ... }: {
  stylix.enable = true;

  stylix.autoEnable = true;

  stylix.opacity.terminal = 0.9;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";

  stylix.fonts = {
    serif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };

    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
    };

    monospace = {
      package = pkgs.nerd-fonts.caskaydia-cove;
      name = "cascadia-code";
    };

    emoji = {
      package = pkgs.nerd-fonts.caskaydia-cove;
      name = "caskaydia-cove";
    };
  };

}
