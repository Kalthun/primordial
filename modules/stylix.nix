{ config, pkgs, lib, inputs, ... }: {

    stylix = {
        enable = true;

        autoEnable = true;

        image = ../wallpapers/sg.png;
        
        opacity = { terminal = 0.9; };

        # base16Scheme = "${pkgs.base16-schemes}/share/themes/kanagawa.yaml";
    };
}
