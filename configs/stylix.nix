{ configs, pkgs, lib, ... }: {

  # stylix.image = ../wallpapers/kanagawa.png;

  stylix.enable = true;
  stylix.autoEnable = true;

  stylix.opacity.terminal = 0.85;
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

  stylix.fonts.sizes.terminal = 14;

  stylix.cursor = {
    # package = pkgs.catppuccin-cursors.mochaLight;
    # name = "catppuccin-mocha-light-cursors";
    
    # package = pkgs.pokemon-cursor;
    # name = "Pokemon";

    package = pkgs.gruppled-cursors;
    name = "Gruppled Black";
    
    size = 24;
  };

  stylix.targets.neovim = {
    plugin = "base16-nvim";
    transparentBackground.main = true;
    transparentBackground.signColumn = true;
  };

}
