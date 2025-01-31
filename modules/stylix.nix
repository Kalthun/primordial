{ config, pkgs, lib, inputs, ... }: {

    imports = [ inputs.stylix.nixosModules.stylix ];

    stylix = {
        enable = true;
        image = ../wallpapers/sg.png;
        autoEnable = true;
        opacity = { terminal = 0.9; };
    };

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";

}
