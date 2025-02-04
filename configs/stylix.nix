{ configs, pkgs, libs, ... }: {

  stylix.enable = true;
  stylix.autoEnable = true;

  stylix.opacity.terminal = 0.95;
  stylix.opacity.desktop = 0.0;

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
      name = "CaskaydiaCove Nerd Font";
    };

    emoji = {
      package = pkgs.nerd-fonts.caskaydia-cove;
      name = "CaskaydiaCove Nerd Font";
    };
  };

  stylix.fonts.sizes.terminal = 11;

}
